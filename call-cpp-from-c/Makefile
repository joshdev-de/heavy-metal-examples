all: use-ex run

ex.o:
	clang++ -c ex.cpp

use-ex: ex.o
	clang -L. -lex.o use-ex.c -o use-ex

run:
	./use-ex

