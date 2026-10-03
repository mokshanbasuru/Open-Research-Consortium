#!/usr/bin/env bash
#
# Verify that every non-merge commit in a range carries a Developer
# Certificate of Origin sign-off whose email address matches the commit's
# author or committer address.
#
# Usage: check_dco.sh <base-sha> <head-sha>
# Environment:
#   PR_AUTHOR  Login of the pull request author. Automated dependency
#              updates from dependabot[bot] are exempt.

set -euo pipefail

base="${1:?usage: check_dco.sh <base-sha> <head-sha>}"
head="${2:?usage: check_dco.sh <base-sha> <head-sha>}"

if [[ "${PR_AUTHOR:-}" == "dependabot[bot]" ]]; then
  echo "Pull request authored by dependabot[bot]; sign-off is not required."
  exit 0
fi

signoff_re='^(.+) <([^<>[:space:]@]+@[^<>[:space:]@]+)>$'
checked=0
failed=0

while IFS= read -r sha; do
  [[ -n "$sha" ]] || continue
  checked=$((checked + 1))

  label="$(git log -1 --format='%h %s' "$sha")"
  author_email="$(git log -1 --format='%ae' "$sha" | tr '[:upper:]' '[:lower:]')"
  committer_email="$(git log -1 --format='%ce' "$sha" | tr '[:upper:]' '[:lower:]')"

  matched=0
  found_any=0
  while IFS= read -r line; do
    [[ -n "$line" ]] || continue
    found_any=1
    if [[ "$line" =~ $signoff_re ]]; then
      email="$(printf '%s' "${BASH_REMATCH[2]}" | tr '[:upper:]' '[:lower:]')"
      if [[ "$email" == "$author_email" || "$email" == "$committer_email" ]]; then
        matched=1
        break
      fi
    fi
  done < <(git log -1 --format='%(trailers:key=Signed-off-by,valueonly,unfold)' "$sha")

  if [[ "$matched" -eq 0 ]]; then
    failed=$((failed + 1))
    if [[ "$found_any" -eq 0 ]]; then
      echo "::error::Missing Signed-off-by trailer: ${label}"
    else
      echo "::error::Signed-off-by does not match the author or committer email: ${label}"
    fi
  fi
done < <(git rev-list --no-merges "${base}..${head}")

echo "Checked ${checked} commit(s); ${failed} failed."

if [[ "$failed" -gt 0 ]]; then
  cat <<'MSG'

Every commit must be signed off to certify the Developer Certificate of Origin.
See CONTRIBUTING.md for the full text and guidance.

To sign off a new commit:        git commit -s
To fix your existing commits:    git rebase --signoff <base-branch>
                                 git push --force-with-lease
MSG
  exit 1
fi
