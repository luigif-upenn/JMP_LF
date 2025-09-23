#!/bin/bash

# Script to download BailoutLF.pdf without using GitHub UI
# Usage: ./download_pdf.sh [output_filename]

set -e

# Configuration
REPO_URL="https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf"
OUTPUT_FILE="${1:-BailoutLF.pdf}"

echo "Downloading BailoutLF.pdf from GitHub repository..."
echo "Source: $REPO_URL"
echo "Output: $OUTPUT_FILE"

# Check if curl is available
if command -v curl >/dev/null 2>&1; then
    echo "Using curl to download..."
    curl -L -o "$OUTPUT_FILE" "$REPO_URL"
elif command -v wget >/dev/null 2>&1; then
    echo "Using wget to download..."
    wget -O "$OUTPUT_FILE" "$REPO_URL"
else
    echo "Error: Neither curl nor wget is available."
    echo "Please install one of these tools to download the file."
    exit 1
fi

# Verify download
if [ -f "$OUTPUT_FILE" ]; then
    FILE_SIZE=$(stat -c%s "$OUTPUT_FILE" 2>/dev/null || stat -f%z "$OUTPUT_FILE" 2>/dev/null || echo "unknown")
    echo "Success! Downloaded $OUTPUT_FILE (Size: $FILE_SIZE bytes)"
else
    echo "Error: Download failed."
    exit 1
fi