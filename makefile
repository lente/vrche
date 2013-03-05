CC = rubber -d
VIEWER = evince

all:
	# compile the main paper
	cd paper/; \
	$(CC) index.tex

view:
	# open the paper using viewer
	$(VIEWER) paper/index.pdf &> /dev/null &

clean:
	# clean all latex compilation units
	rm -f {paper/,}*.{aux,toc,log}
