#ifdef __cplusplus
    #define EXTERNC extern "C"
    #else
    #define EXTERNC
    #endif

    EXTERNC int dbl(int);

    #undef EXTERNC