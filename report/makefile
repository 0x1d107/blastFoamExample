all: mavlyutov.docx
mavlyutov.docx: mavlyutov.md article.bib custom-reference.docx
	pandoc -s  $< --reference-doc=custom-reference.docx --filter pandoc-crossref --citeproc  -o $@
