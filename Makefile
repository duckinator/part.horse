# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS   ?=
SPHINXBUILD  ?= sphinx-build
PAPER        ?=
SOURCEDIR     = source
BUILDDIR      = build

# Internal variables.
PAPEROPT_a4     = -D latex_elements.papersize=a4paper
PAPEROPT_letter = -D latex_elements.papersize=letterpaper
# $(O) is meant as a shortcut for $(SPHINXOPTS)
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) $(O) $(SOURCEDIR)
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) $(O) $(SOURCEDIR)

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html        to make standalone HTML files"
	@echo "  dirhtml     to make HTML files named index.html in directories"
	@echo "  singlehtml  to make a single large HTML file"
	@echo "  pickle      to make pickle files"
	@echo "  json        to make JSON files"
	@echo "  htmlhelp    to make HTML files and an HTML help project"
	@echo "  qthelp      to make HTML files and a qthelp project"
	@echo "  applehelp   to make an Apple Help Book"
	@echo "  devhelp     to make HTML files and a Devhelp project"
	@echo "  epub        to make an epub"
	@echo "  latex       to make LaTeX files (you can set PAPER=a4 or PAPER=letter)"
	@echo "  latexpdf    to make LaTeX files and then PDFs out of them"
	@echo "  latexpdfja  to make LaTeX files and run them through platex/dvipdfmx"
	@echo "  lualatexpdf to make LaTeX files and run them through lualatex"
	@echo "  xelatexpdf  to make LaTeX files and run them through xelatex"
	@echo "  text        to make text files"
	@echo "  man         to make manual pages"
	@echo "  texinfo     to make Texinfo files"
	@echo "  info        to make Texinfo files and run them through makeinfo"
	@echo "  gettext     to make PO message catalogs"
	@echo "  changes     to make an overview of all changed/added/deprecated items"
	@echo "  xml         to make Docutils-native XML files"
	@echo "  pseudoxml   to make pseudoxml-XML files for display purposes"
	@echo "  linkcheck   to check all external links for integrity"
	@echo "  doctest     to run all doctests embedded in the documentation (if enabled)"
	@echo "  coverage    to run coverage check of the documentation (if enabled)"
	@echo "  dummy       to check syntax errors of document sources"
	@echo "  clean       to remove everything in the build directory"

.PHONY: clean
clean:
	rm -rf $(BUILDDIR)

.PHONY: latexpdf
latexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: latexpdfja
latexpdfja:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through platex and dvipdfmx..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf-ja
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: lualatexpdf
lualatexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through lualatex..."
	$(MAKE) PDFLATEX=lualatex -C $(BUILDDIR)/latex all-pdf
	@echo "lualatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: xelatexpdf
xelatexpdf:
	$(SPHINXBUILD) -b latex $(ALLSPHINXOPTS) $(BUILDDIR)/latex
	@echo "Running LaTeX files through xelatex..."
	$(MAKE) PDFLATEX=xelatex -C $(BUILDDIR)/latex all-pdf
	@echo "xelatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: info
info:
	$(SPHINXBUILD) -b texinfo $(ALLSPHINXOPTS) $(BUILDDIR)/texinfo
	@echo "Running Texinfo files through makeinfo..."
	make -C $(BUILDDIR)/texinfo info
	@echo "makeinfo finished; the Info files are in $(BUILDDIR)/texinfo."

.PHONY: gettext
gettext:
	$(SPHINXBUILD) -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/locale

# Catch-all target: route all unknown targets to Sphinx
.PHONY: Makefile
%: Makefile
	$(SPHINXBUILD) -b "$@" $(ALLSPHINXOPTS) "$(BUILDDIR)/$@"

