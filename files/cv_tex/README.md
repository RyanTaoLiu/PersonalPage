# LaTeX CV Compilation Guide

This directory contains the LaTeX source files for the CV.

## Files

- `cv-llt.tex` - Main LaTeX CV file
- `settings.sty` - Style definitions
- `own-bib.bib` - Bibliography database for publications
- Other `.tex` files - Section files (education, employment, publications, etc.)

## Compilation

### Using the Compilation Script

From the repository root, run:

```bash
./scripts/compile_cv.sh
```

This will:
1. Compile `cv-llt.tex` to PDF
2. Move the PDF to `files/cv.pdf`
3. Clean up auxiliary files

### Manual Compilation

If you prefer to compile manually:

```bash
cd files/cv_tex
xelatex cv-llt.tex
bibtex cv-llt
xelatex cv-llt.tex
xelatex cv-llt.tex
```

Then move `cv-llt.pdf` to `../cv.pdf`.

## Requirements

- LaTeX distribution (TeX Live, MacTeX, or MiKTeX)
- XeLaTeX or LuaLaTeX (recommended for better font support)
- Required LaTeX packages:
  - curve (document class)
  - biblatex
  - fontawesome5
  - tikz
  - And others (see `settings.sty`)

## Installation on macOS

```bash
brew install --cask mactex
```

## Installation on Linux

```bash
sudo apt-get install texlive-full  # Ubuntu/Debian
# or
sudo yum install texlive-scheme-full  # CentOS/RHEL
```

## Viewing the CV

After compilation, the CV PDF will be available at:
- `/files/cv.pdf` (file path)
- `/cv/` (web page with embedded PDF viewer)
