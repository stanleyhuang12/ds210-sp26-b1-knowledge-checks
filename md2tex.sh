#!/bin/bash
set -euo pipefail

SOURCE_FILE="${1:-./src/knowledge_checks_part2-exported.md}"

if [[ ! -f "$SOURCE_FILE" ]]; then
  echo "Error: source file not found: $SOURCE_FILE" >&2
  exit 1
fi

BASENAME="$(basename "$SOURCE_FILE" .md)"
OUTPUT_FILE="./pdfs/${BASENAME}.tex"

pandoc -s "$SOURCE_FILE" \
  -o "$OUTPUT_FILE" \
  -V geometry:margin=1in \
  -V fontsize=11pt \
  --pdf-engine=xelatex

echo "Wrote: $OUTPUT_FILE"
