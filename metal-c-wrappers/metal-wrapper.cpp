#include "metal-wrapper.hpp"
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

extern "C" void commit(cmd_buffer_ptr untyped_cmd_buffer_ptr)
{
    MTL::CommandBuffer *cmd_buffer = static_cast<MTL::CommandBuffer*>(untyped_cmd_buffer_ptr);

    cmd_buffer->commit();
}

extern "C" void waitUntilCompleted(cmd_buffer_ptr untyped_cmd_buffer_ptr)
{
    MTL::CommandBuffer *cmd_buffer = static_cast<MTL::CommandBuffer*>(untyped_cmd_buffer_ptr);

    cmd_buffer->waitUntilCompleted();
}

extern "C" comp_cmd_enc_ptr getComputeCmdEncoder(cmd_buffer_ptr untyped_cmd_buffer_ptr)
{
    MTL::CommandBuffer *cmd_buffer = static_cast<MTL::CommandBuffer*>(untyped_cmd_buffer_ptr);

    MTL::ComputeCommandEncoder *cmd_encoder = cmd_buffer->computeCommandEncoder();
    return cmd_encoder;
}

extern "C" void setComputePipelineState(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr, pso_ptr untyped_pso_ptr)
{
    MTL::ComputeCommandEncoder *cmd_encoder = static_cast<MTL::ComputeCommandEncoder*>(untyped_comp_cmd_enc_ptr);
    MTL::ComputePipelineState *pso = static_cast<MTL::ComputePipelineState*>(untyped_pso_ptr);

    cmd_encoder->setComputePipelineState(pso);
}

extern "C" void setBuffer(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr, device_buffer_ptr untyped_device_buffer_ptr, const unsigned int offset, const unsigned int index)
{
    MTL::ComputeCommandEncoder *cmd_encoder = static_cast<MTL::ComputeCommandEncoder*>(untyped_comp_cmd_enc_ptr);
    MTL::Buffer *buffer = static_cast<MTL::Buffer*>(untyped_device_buffer_ptr);

    cmd_encoder->setBuffer(buffer, offset, index);
}

extern "C" void dispatchThreads(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr, mtl_size gridSize, mtl_size threadGroupSize)
{
    MTL::ComputeCommandEncoder *cmd_encoder = static_cast<MTL::ComputeCommandEncoder*>(untyped_comp_cmd_enc_ptr);

    cmd_encoder->dispatchThreads(toMTLSize(gridSize), toMTLSize(threadGroupSize));
}

extern "C" void endEncoding(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr)
{
    MTL::ComputeCommandEncoder *cmd_encoder = static_cast<MTL::ComputeCommandEncoder*>(untyped_comp_cmd_enc_ptr);

    cmd_encoder->endEncoding();
}

extern "C" device_buffer_ptr newDeviceBuffer(device_ptr untyped_device_ptr, const unsigned int bufferSize)
{
    MTL::Device *device = static_cast<MTL::Device*>(untyped_device_ptr);

    void* buffer = device->newBuffer(bufferSize, MTL::ResourceStorageModeShared);
    return buffer;
}

extern "C" void* bufferContents(device_buffer_ptr untyped_device_buffer_ptr)
{
    MTL::Buffer *buffer = static_cast<MTL::Buffer*>(untyped_device_buffer_ptr);

    return buffer->contents();
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

MTL::Size toMTLSize(const mtl_size size_struct)
{
    return MTL::Size::Make(size_struct.width, size_struct.height, size_struct.depth);
}

extern "C" unsigned int maxTotalThreadsPerThreadgroup(pso_ptr untyped_pso_ptr)
{
    MTL::ComputePipelineState *pso = static_cast<MTL::ComputePipelineState*>(untyped_pso_ptr);

    return pso->maxTotalThreadsPerThreadgroup();
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
