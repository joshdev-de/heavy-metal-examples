all: use-wrapper

metal-wrapper.o:
	clang++ -std=c++17 -I./metal-cpp -O2 -c -framework Metal -framework Foundation -framework MetalKit metal-wrapper.cpp

use-wrapper: metal-wrapper.o
	clang -L. -lmetal-wrapper.o use-wrapper.c 