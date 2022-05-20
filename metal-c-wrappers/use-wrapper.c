// Lars Gebraad, 20th of April, 2022
//

#include "metal-wrapper.h"
#include <stdio.h>

#define ARRAY_SIZE 1000000

int main()
{
    void *device = getDefaultDevice();
    library_ptr library = loadDefaultLibrary(device);
    cmd_queue_ptr cmd_queue = getCommandQueue(device);
    cmd_buffer_ptr cmd_buffer = getCommandBuffer(cmd_queue);

    pso_ptr pso = psoWithFunction(device, library, "gen42");

    comp_cmd_enc_ptr cmd_enc = getComputeCmdEncoder(cmd_buffer);
    setComputePipelineState(cmd_enc, pso);

    device_buffer_ptr device_buffer = newDeviceBuffer(device, sizeof(float) * ARRAY_SIZE);

    setBuffer(cmd_enc, device_buffer, 0, 0);

    mtl_size gridSize = {ARRAY_SIZE, 1, 1};
    mtl_size threadGroupSize = {maxTotalThreadsPerThreadgroup(pso), 1, 1};

    dispatchThreads(cmd_enc, gridSize, threadGroupSize);
    endEncoding(cmd_enc);

    commit(cmd_buffer);

    waitUntilCompleted(cmd_buffer);

    float *content = bufferContents(device_buffer);

    printf("%f", content[42]);

    return 0;
}