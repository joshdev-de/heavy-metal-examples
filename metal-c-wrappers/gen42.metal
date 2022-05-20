#include <metal_stdlib>
using namespace metal;

kernel void gen42(device float* a, uint index [[thread_position_in_grid]])
{
    a[index] = 42.0;
}
