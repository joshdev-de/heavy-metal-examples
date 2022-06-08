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

    pso_ptr pso_gen42 = psoWithFunction(device, library, "gen42");
    pso_ptr pso_addOne = psoWithFunction(device, library, "addOne");

    device_buffer_ptr device_buffer = newDeviceBuffer(device, sizeof(float) * ARRAY_SIZE);

    // initialize arry with 42.0

    cmd_buffer_ptr cmd_buffer = getCommandBuffer(cmd_queue);
    comp_cmd_enc_ptr cmd_enc = getComputeCmdEncoder(cmd_buffer);
    
    setComputePipelineState(cmd_enc, pso_gen42);
    setBuffer(cmd_enc, device_buffer, 0, 0);

    mtl_size gridSize = {ARRAY_SIZE, 1, 1};
    mtl_size threadGroupSize = {maxTotalThreadsPerThreadgroup(pso_addOne), 1, 1};
    dispatchThreads(cmd_enc, gridSize, threadGroupSize);
    endEncoding(cmd_enc);

    commit(cmd_buffer);


    // add 1 to each element a couple of times

    for(int i = 0; i < 1000000; i++) {
        cmd_buffer = getCommandBuffer(cmd_queue);
        comp_cmd_enc_ptr cmd_enc = getComputeCmdEncoder(cmd_buffer);
        setComputePipelineState(cmd_enc, pso_addOne);

        setBuffer(cmd_enc, device_buffer, 0, 0);

        mtl_size gridSize = {ARRAY_SIZE, 1, 1};
        mtl_size threadGroupSize = {maxTotalThreadsPerThreadgroup(pso_addOne), 1, 1};

        dispatchThreads(cmd_enc, gridSize, threadGroupSize);
        endEncoding(cmd_enc);

        commit(cmd_buffer);
    }
    

    waitUntilCompleted(cmd_buffer);

    float *content = bufferContents(device_buffer);

    printf("%f", content[12]);

    return 0;
}