.PHONY: all clean

BIB := thesis.bib
MAIN_TEX := thesis.tex
SUB_TEX := snutocstyle.tex $(wildcard subparts/*.tex) 
TARGET := thesis.pdf

all: target $(addprefix target/,$(TARGET))

target/$(TARGET): $(MAIN_TEX) $(SUB_TEX) $(BIB)
	latexmk -pdf -pdflatex="pdflatex -halt-on-error -interaction=nonstopmode" -output-directory='target' $(MAIN_TEX)

target:
	mkdir -p "./target"

clean:
	rm -rf target
