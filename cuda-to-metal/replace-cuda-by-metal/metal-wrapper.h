#ifdef __cplusplus
    #define EXTERNC extern "C"
    #else
    #define EXTERNC
    #endif

    typedef void* device_ptr;
    typedef void* library_ptr;
    typedef void* pso_ptr;
    typedef void* cmd_queue_ptr;
    typedef void* cmd_buffer_ptr;
    typedef void* comp_cmd_enc_ptr;
    typedef void* device_buffer_ptr;

    typedef struct {
        unsigned int width;
        unsigned int height;
        unsigned int depth;
    } mtl_size;



    EXTERNC device_ptr getDefaultDevice();
    EXTERNC void* newDeviceBuffer(device_ptr untyped_device_ptr, const unsigned int bufferSize);
    EXTERNC void* bufferContents(device_buffer_ptr untyped_device_buffer_ptr);
    EXTERNC library_ptr loadDefaultLibrary(device_ptr);
    EXTERNC cmd_queue_ptr getCommandQueue(device_ptr);
    EXTERNC cmd_buffer_ptr getCommandBuffer(cmd_queue_ptr untyped_cmd_queue_ptr);

    EXTERNC pso_ptr psoWithFunction(device_ptr, library_ptr, char*);
    EXTERNC unsigned int maxTotalThreadsPerThreadgroup(pso_ptr untyped_pso_ptr);
    
    EXTERNC comp_cmd_enc_ptr getComputeCmdEncoder(cmd_buffer_ptr untyped_cmd_buffer_ptr);
    EXTERNC void setComputePipelineState(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr, pso_ptr untyped_pso_ptr);
    EXTERNC void setBuffer(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr, void *untyped_buffer, const unsigned int offset, const unsigned int index);
    EXTERNC void dispatchThreads(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr, mtl_size gridSize, mtl_size threadGroupSize);
    EXTERNC void endEncoding(comp_cmd_enc_ptr untyped_comp_cmd_enc_ptr);

    EXTERNC void commit(cmd_buffer_ptr untyped_cmd_buffer_ptr);
    EXTERNC void waitUntilCompleted(cmd_buffer_ptr untyped_cmd_buffer_ptr);
    
    EXTERNC int dummyDevicePtrInput(device_ptr);

    #undef EXTERNC