#include "metal-wrapper.hpp"
#include "metal-wrapper.h"
#include <iostream>

extern "C" device_ptr getDefaultDevice()
{
    MTL::Device *device = MTL::CreateSystemDefaultDevice();
    return device;
}

extern "C" library_ptr loadDefaultLibrary(device_ptr untyped_device_ptr)
{
    MTL::Device *device = static_cast<MTL::Device*>(untyped_device_ptr);
    MTL::Library *defaultLibrary = device->newDefaultLibrary();

    if (defaultLibrary == nullptr)
    {
        std::cout << "Failed to find the default library." << std::endl;
        return nullptr;
    }

    return defaultLibrary;
}

extern "C" cmd_queue_ptr getCommandQueue(device_ptr untyped_device_ptr)
{
    MTL::Device *device = static_cast<MTL::Device*>(untyped_device_ptr);

    MTL::CommandQueue *cmd_queue = device->newCommandQueue();
    if (cmd_queue == nullptr)
    {
        std::cout << "Failed to find the command queue." << std::endl;
    }

    return cmd_queue;
}

extern "C" cmd_buffer_ptr getCommandBuffer(cmd_queue_ptr untyped_cmd_queue_ptr)
{
    MTL::CommandQueue *queue = static_cast<MTL::CommandQueue*>(untyped_cmd_queue_ptr);

    MTL::CommandBuffer *cmdBuffer = queue->commandBuffer();
    assert(cmdBuffer != nullptr);

    return cmdBuffer;
}


extern "C" pso_ptr psoWithFunction(device_ptr untyped_device_ptr, library_ptr untyped_library_ptr, char* funName)
{
    MTL::Device *device = static_cast<MTL::Device*>(untyped_device_ptr);
    MTL::Library *library = static_cast<MTL::Library*>(untyped_library_ptr);

    auto str = NS::String::string(funName, NS::ASCIIStringEncoding);

    MTL::Function *function = library->newFunction(str);

    if (function == nullptr)
    {
        std::cout << "Failed to find the " << funName << " function." << std::endl;
        return nullptr;
    }

    NS::Error *error = nullptr;

    MTL::ComputePipelineState *pso = device->newComputePipelineState(function, &error);

    if (pso == nullptr)
    {
        //  If the Metal API validation is enabled, you can find out more information about what
        //  went wrong.  (Metal API validation is enabled by default when a debug build is run
        //  from Xcode)
        std::cout << "Failed to created pipeline state object, error " << error << "." << std::endl;
        return nullptr;
    }

    return pso;
}

extern "C" int dummyDevicePtrInput(device_ptr untyped_device_ptr) {
    MTL::Device *device = static_cast<MTL::Device*>(untyped_device_ptr);
    MTL::CommandQueue *cmd_queue = device->newCommandQueue();
    if (cmd_queue == nullptr)
    {
        std::cout << "Failed to find the command queue." << std::endl;
    }
    return 3;
}
