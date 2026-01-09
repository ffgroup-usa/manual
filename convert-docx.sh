#!/bin/bash
# Convert DOCX files to Markdown for Docusaurus
# Usage: ./convert-docx.sh <docx-file> [output-name]

DOCX_FILE="$1"
OUTPUT_NAME="${2:-$(basename "$DOCX_FILE" .docx)}"

if [ -z "$DOCX_FILE" ]; then
    echo "Usage: $0 <docx-file> [output-name]"
    exit 1
fi

if [ ! -f "$DOCX_FILE" ]; then
    echo "Error: File not found: $DOCX_FILE"
    exit 1
fi

# Create output directory
OUTPUT_DIR="docs/${OUTPUT_NAME}"
mkdir -p "$OUTPUT_DIR"

# Create media directory for images
MEDIA_DIR="$OUTPUT_DIR/img"
mkdir -p "$MEDIA_DIR"

# Convert DOCX to Markdown with extracted images
echo "Converting $DOCX_FILE to Markdown..."
pandoc "$DOCX_FILE" \
    -f docx \
    -t gfm \
    --extract-media="$MEDIA_DIR" \
    -o "$OUTPUT_DIR/index.md"

# Move images from nested media folder if it exists
if [ -d "$MEDIA_DIR/media" ]; then
    mv "$MEDIA_DIR/media"/* "$MEDIA_DIR/" 2>/dev/null || true
    rmdir "$MEDIA_DIR/media" 2>/dev/null || true
fi

# Fix image paths in the markdown file
sed -i 's|img/media/|img/|g' "$OUTPUT_DIR/index.md"

# Add frontmatter
TITLE=$(echo "$OUTPUT_NAME" | sed 's/-/ /g' | sed 's/\b\(\w\)/\u\1/g')
temp_file=$(mktemp)
echo "---" > "$temp_file"
echo "title: $TITLE" >> "$temp_file"
echo "---" >> "$temp_file"
echo "" >> "$temp_file"
cat "$OUTPUT_DIR/index.md" >> "$temp_file"
mv "$temp_file" "$OUTPUT_DIR/index.md"

echo "Converted to $OUTPUT_DIR/index.md"
echo "Images saved to $MEDIA_DIR/"
