$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error';

# Put aux/log/bbl etc. in the compilations folder

# Use bibtex
$bibtex_use = 1;
$bibtex = 'bibtex %O %B';

$pdf_previewer = ''; # no auto-open
$silent = 1;
$bibs = ["./src"];
