#!/usr/bin/env bash
#
# Enforce the repository content policy on files added or modified in a
# range: no compiled binaries, archives, disk images, or PDF files, and no
# single file larger than one mebibyte. Paths listed in
# .github/file-policy-allow.txt are exempt (a Level 2 decision).
#
# Usage: check_file_policy.sh <base-sha> <head-sha>

set -euo pipefail

base="${1:?usage: check_file_policy.sh <base-sha> <head-sha>}"
head="${2:?usage: check_file_policy.sh <base-sha> <head-sha>}"

max_bytes=$((1024 * 1024))
blocked_re='\.(exe|dll|so|dylib|bin|o|a|class|jar|pyc|zip|tar|gz|tgz|bz2|xz|7z|rar|iso|dmg|img|msi|pdf)$'
allowlist=".github/file-policy-allow.txt"
failed=0

is_allowed() {
  [[ -f "$allowlist" ]] || return 1
  grep -Fxq -- "$1" <(grep -v '^[[:space:]]*#' "$allowlist" || true)
}

while IFS= read -r -d '' path; do
  if is_allowed "$path"; then
    echo "Allowed by policy exception: ${path}"
    continue
  fi

  lower="$(printf '%s' "$path" | tr '[:upper:]' '[:lower:]')"
  if [[ "$lower" =~ $blocked_re ]]; then
    echo "::error file=${path}::File type is not permitted by the repository content policy."
    failed=$((failed + 1))
    continue
  fi

  size="$(git cat-file -s "${head}:${path}" 2>/dev/null || echo 0)"
  if [[ "$size" -gt "$max_bytes" ]]; then
    echo "::error file=${path}::File is ${size} bytes, which exceeds the ${max_bytes}-byte limit."
    failed=$((failed + 1))
  fi
done < <(git diff --name-only -z --diff-filter=AMR "${base}...${head}")

if [[ "$failed" -gt 0 ]]; then
  echo "${failed} file(s) violate the repository content policy. See CONTRIBUTING.md."
  exit 1
fi
echo "Repository content policy satisfied."
