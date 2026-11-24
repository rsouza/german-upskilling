#!/bin/bash
# lock.sh — Generate a PDF snapshot of a Markdown file and commit it as a "locked" version.
#
# Usage:
#   ./lock.sh <path-to-markdown-file>
#
# Example:
#   ./lock.sh textbook/lessons/lesson-01-vorstellen.md
#   ./lock.sh textbook/reference/01-pronouns.md
#
# To lock ALL reference files:
#   ./lock.sh --all-reference
#
# To lock ALL lesson files:
#   ./lock.sh --all-lessons

set -e

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
PDF_DIR="$REPO_ROOT/pdfs"

generate_pdf() {
    local md_file="$1"
    local base_name
    base_name=$(basename "$md_file" .md)
    local subdir
    subdir=$(dirname "$md_file" | sed "s|$REPO_ROOT/||")
    local pdf_subdir="$PDF_DIR/$subdir"
    mkdir -p "$pdf_subdir"
    local pdf_file="$pdf_subdir/${base_name}.pdf"

    local tmp_html
    tmp_html=$(mktemp /tmp/german-upskilling-XXXX.html)

    echo "Generating PDF: $pdf_file"
    # Step 1: Markdown → HTML (pandoc)
    pandoc "$md_file" \
        -o "$tmp_html" \
        --standalone \
        --metadata title="" \
        -c /dev/null \
        2>/dev/null
    # Step 2: HTML → PDF (weasyprint via Python 3.12)
    /opt/homebrew/bin/python3.12 - <<PYEOF
from weasyprint import HTML, CSS
import sys

css = CSS(string="""
  @page { margin: 2cm; size: A4; }
  body { font-family: Arial, Helvetica, sans-serif; font-size: 11pt; line-height: 1.5; }
  table { border-collapse: collapse; width: 100%; margin: 1em 0; }
  th, td { border: 1px solid #ccc; padding: 6px 10px; text-align: left; }
  th { background: #f0f0f0; font-weight: bold; }
  h1 { font-size: 18pt; border-bottom: 2px solid #333; padding-bottom: 4px; }
  h2 { font-size: 14pt; color: #333; margin-top: 1.5em; }
  h3 { font-size: 12pt; color: #555; }
  code { background: #f8f8f8; padding: 1px 4px; font-family: monospace; }
  blockquote { border-left: 3px solid #aaa; margin-left: 0; padding-left: 1em; color: #555; }
""")
HTML(filename="$tmp_html").write_pdf("$pdf_file", stylesheets=[css])
print("✓ PDF created: $pdf_file")
PYEOF
    rm -f "$tmp_html"
}

if [ "$1" = "--all-reference" ]; then
    for f in "$REPO_ROOT"/textbook/reference/*.md; do
        generate_pdf "$f"
    done
elif [ "$1" = "--all-lessons" ]; then
    for f in "$REPO_ROOT"/textbook/lessons/*.md; do
        [ -f "$f" ] && generate_pdf "$f"
    done
elif [ -n "$1" ]; then
    # Resolve path relative to repo root or absolute
    if [[ "$1" = /* ]]; then
        TARGET="$1"
    else
        TARGET="$REPO_ROOT/$1"
    fi

    if [ ! -f "$TARGET" ]; then
        echo "Error: file not found: $TARGET"
        exit 1
    fi
    generate_pdf "$TARGET"
else
    echo "Usage:"
    echo "  ./lock.sh <path-to-markdown-file>"
    echo "  ./lock.sh --all-reference"
    echo "  ./lock.sh --all-lessons"
    exit 1
fi

echo ""
echo "PDF generation complete."
echo "To commit the locked snapshots:"
echo "  git add pdfs/ && git commit -m 'LOCK: snapshot PDFs'"
