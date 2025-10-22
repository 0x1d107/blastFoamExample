all: mavlyutov.docx
mavlyutov.docx: mavlyutov.md article.bib custom-reference.docx
	pandoc -s --cite $< --reference-doc=custom-reference.docx -o $@
