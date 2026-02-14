MAIN = src/main.tex

.PHONY: all watch clean distclean fmt

# Build PDF once
all:
	latexmk -cd $(MAIN)

# Watch mode: continuously rebuild on changes
watch:
	latexmk -cd -pvc $(MAIN)

# Remove intermediate files (keep PDF)
clean:
	latexmk -cd -c $(MAIN)

# Remove everything including PDF
distclean:
	latexmk -cd -C $(MAIN)

# Format all .tex files
fmt:
	latexindent -w -c=build/ src/*.tex src/sections/*.tex
