SLIDES := $(patsubst %_slides.md,%_slides.pdf,$(wildcard *.md))

all : $(SLIDES)

%_slides.pdf : %_slides.md
	pandoc $^ -o $@ -t beamer --smart \
	  --bibliography=/home/scoavoux/hubic/bib/mainlibrary.bib\
	  --slide-level 3\
	  --template=./lecture.beamer\
	  --toc\
	  --latex-engine=xelatex
