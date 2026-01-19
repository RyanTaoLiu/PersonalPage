#!/bin/bash

# Script to compile LaTeX CV to PDF
# This script compiles cv-llt.tex and outputs cv.pdf to the files directory

# Set the base directory to the repository root
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Define paths
CV_TEX_DIR="$BASE_DIR/files/cv_tex"
CV_TEX_FILE="$CV_TEX_DIR/cv-llt.tex"
OUTPUT_DIR="$BASE_DIR/files"
OUTPUT_FILE="$OUTPUT_DIR/cv.pdf"

# Add common LaTeX paths to PATH (especially for MacTeX on macOS)
if [ -d "/Library/TeX/texbin" ]; then
    export PATH="/Library/TeX/texbin:$PATH"
fi
if [ -d "/usr/local/texlive" ]; then
    # Find the latest TeX Live installation
    LATEST_TEXLIVE=$(ls -d /usr/local/texlive/*/bin/*/ 2>/dev/null | sort -V | tail -1)
    if [ -n "$LATEST_TEXLIVE" ]; then
        export PATH="$LATEST_TEXLIVE:$PATH"
    fi
fi

# Check if LaTeX is installed
if ! command -v pdflatex &> /dev/null && ! command -v xelatex &> /dev/null && ! command -v lualatex &> /dev/null; then
    echo "Error: No LaTeX compiler found. Please install TeX Live or MacTeX."
    echo "On macOS, you can install with: brew install --cask mactex"
    echo ""
    echo "If you have MacTeX installed, make sure /Library/TeX/texbin is in your PATH."
    echo "You can add it to your ~/.zshrc or ~/.bash_profile:"
    echo "  export PATH=\"/Library/TeX/texbin:\$PATH\""
    exit 1
fi

# Check if the LaTeX file exists
if [ ! -f "$CV_TEX_FILE" ]; then
    echo "Error: LaTeX CV file not found at $CV_TEX_FILE"
    exit 1
fi

# Change to the CV tex directory
cd "$CV_TEX_DIR" || exit 1

echo "Compiling LaTeX CV..."

# Try to use xelatex first (for better font support), fallback to pdflatex
if command -v xelatex &> /dev/null; then
    COMPILER="xelatex"
elif command -v lualatex &> /dev/null; then
    COMPILER="lualatex"
else
    COMPILER="pdflatex"
fi

echo "Using compiler: $COMPILER"

# Run Biber/BibTeX if bibliography exists
if [ -f "own-bib.bib" ]; then
    echo "Running bibliography processor..."
    $COMPILER -interaction=nonstopmode cv-llt.tex > /tmp/xelatex1.log 2>&1
    
    # Try biber first (for biblatex), fallback to bibtex if it fails
    if command -v biber &> /dev/null; then
        echo "Trying Biber..."
        if biber cv-llt > /tmp/biber.log 2>&1; then
            echo "Biber succeeded"
        else
            echo "Biber failed, trying BibTeX..."
            bibtex cv-llt > /tmp/bibtex.log 2>&1
        fi
    else
        echo "Using BibTeX..."
        bibtex cv-llt > /tmp/bibtex.log 2>&1
    fi
    
    $COMPILER -interaction=nonstopmode cv-llt.tex > /tmp/xelatex2.log 2>&1
    $COMPILER -interaction=nonstopmode cv-llt.tex > /tmp/xelatex3.log 2>&1
else
    # Just compile twice for proper cross-references
    $COMPILER -interaction=nonstopmode cv-llt.tex > /dev/null 2>&1
    $COMPILER -interaction=nonstopmode cv-llt.tex > /dev/null 2>&1
fi

# Check if PDF was generated
if [ -f "cv-llt.pdf" ]; then
    echo "PDF generated successfully!"
    # Move PDF to files directory
    mv cv-llt.pdf "$OUTPUT_FILE"
    echo "CV PDF saved to: $OUTPUT_FILE"
    
    # Clean up auxiliary files (optional)
    echo "Cleaning up auxiliary files..."
    # Keep .bbl and .blg for debugging bibliography issues
    rm -f cv-llt.aux cv-llt.log cv-llt.out cv-llt.bcf cv-llt.run.xml 2>/dev/null
    
    exit 0
else
    echo "Error: PDF compilation failed. Check the LaTeX file for errors."
    echo "You can run the compiler manually to see error messages:"
    echo "  cd $CV_TEX_DIR"
    echo "  $COMPILER cv-llt.tex"
    exit 1
fi
