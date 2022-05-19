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

    EXTERNC device_ptr getDefaultDevice();
    EXTERNC library_ptr loadDefaultLibrary(device_ptr);
    EXTERNC cmd_queue_ptr getCommandQueue(device_ptr);
    EXTERNC pso_ptr psoWithFunction(device_ptr, library_ptr, char*);
    EXTERNC int dummyDevicePtrInput(device_ptr);

    #undef EXTERNC