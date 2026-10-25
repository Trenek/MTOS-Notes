target/main.pdf: main.tex \
	Wykład\ 1/main.tex \
	| target build
	pdflatex -output-directory=build $^
	mv build/main.pdf target/main.pdf
	rm -r build

build:
	mkdir build

target:
	mkdir target

.PHONY: clean clean-shit

clean:
	rm -r target	
