// Lars Gebraad, 20th of April, 2022
//

#include "metal-wrapper.h"

int main()
{
    void *device = getDefaultDevice();
    return dummyDevicePtrInput(device);
}