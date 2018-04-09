#
#
#

PLOTS := internet-speeds internet-speeds-vdsl

all: $(addsuffix .svg,$(PLOTS))

build-depends:
	sudo apt install gnuplot

%.svg: %.gnuplot prefix.svg.gnuplot
	gnuplot prefix.svg.gnuplot $< >$@ </dev/null

%.pdf: %.gnuplot prefix.pdf.gnuplot
	gnuplot prefix.pdf.gnuplot $< >$@ </dev/null

