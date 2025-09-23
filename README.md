# JMP_LF Repository

This repository contains the BailoutLF.pdf file.

## Files in This Repository

- **BailoutLF.pdf**: The main PDF document (~5.4 MB)
- **README.md**: This documentation file
- **download_pdf.sh**: A convenience script to download the PDF

## How to Access BailoutLF.pdf Without GitHub UI

There are several ways to access the PDF file programmatically without using the GitHub web interface:

### 1. Direct Raw URL (Recommended)

You can access the PDF directly using GitHub's raw content URL:

```
https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf
```

**This is the fastest and most direct method** - just paste this URL anywhere you need to access the PDF.

### 2. Using curl or wget

Download the PDF using command line tools:

```bash
# Using curl
curl -L -o BailoutLF.pdf "https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf"

# Using wget
wget "https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf"
```

### 3. Using Git Commands

Clone the repository and access the file:

```bash
# Clone the entire repository
git clone https://github.com/luigif-upenn/JMP_LF.git
cd JMP_LF

# The PDF file will be available locally
ls -la BailoutLF.pdf
```

### 4. Using GitHub API

Get file information via GitHub's REST API:

```bash
# Get file metadata
curl -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/repos/luigif-upenn/JMP_LF/contents/BailoutLF.pdf"

# Download file content (base64 encoded)
curl -H "Accept: application/vnd.github.v3.raw" \
  "https://api.github.com/repos/luigif-upenn/JMP_LF/contents/BailoutLF.pdf" \
  -o BailoutLF.pdf
```

### 5. Using GitHub CLI (gh)

If you have GitHub CLI installed:

```bash
# Clone the repository
gh repo clone luigif-upenn/JMP_LF

# Or download a single file
gh api repos/luigif-upenn/JMP_LF/contents/BailoutLF.pdf \
  --jq '.download_url' | xargs curl -L -o BailoutLF.pdf
```

### 6. Using the Provided Script

This repository includes a convenience script:

```bash
# Download to current directory
./download_pdf.sh

# Download with custom filename
./download_pdf.sh my_custom_name.pdf
```

## File Information

- **Filename**: BailoutLF.pdf
- **Size**: ~5.4 MB
- **Location**: Root directory of the repository

## Quick Access

**The fastest way to get the PDF is using the direct raw URL:**
```
https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf
```

Simply paste this URL in your browser, or use it in scripts and applications that need to access the PDF programmatically.

### Examples of Usage

1. **In a web browser**: Just paste the URL in the address bar
2. **In HTML**: `<a href="https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf">Download PDF</a>`
3. **In Python**: 
   ```python
   import requests
   response = requests.get("https://raw.githubusercontent.com/luigif-upenn/JMP_LF/main/BailoutLF.pdf")
   with open("BailoutLF.pdf", "wb") as f:
       f.write(response.content)
   ```