#include <CLUE/Context.h>

int main(int argc, const char *argv[])
{
	CLUEContextGetCLContext();
    CLUEContextCreateWithGPU();
	CLUEContextDestroy();
    return 0;
}
