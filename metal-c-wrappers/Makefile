CC := clang
CXX := clang++
CFLAGS += -O2
CXXFLAGS += -std=c++17 -I./metal-cpp -O2
LDFLAGS += -framework Metal -framework Foundation -framework MetalKit

.PHONY: all clean

all: use-wrapper kernel

kernel:
	xcrun -sdk macosx metal gen42.metal

use-wrapper: metal-wrapper.o use-wrapper.o
	$(CXX) $(LDFLAGS) $^ -o $@

clean:
	$(RM) *.o use-wrapper