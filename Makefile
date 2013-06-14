NAME=lista4sol

${NAME}.pdf: ${NAME}.tex
	pdflatex ${NAME}.tex
	pdflatex ${NAME}.tex

clean:
	rm -f ${NAME}.{aux,log,pdf,toc}

auto:
	while [ true ]; do \
		inotifywait -e modify ${NAME}.tex; \
		make; \
	done
