#include <CLUE/Core/Context.h>
#include <CLUE/Core/Memory.h>
#include <CLUE/Histogram/Histogram64.h>
#include <iostream>

int main(int argc, const char *argv[])
{
    CLUEContextCreateWithGPU();
	CLUEContextDump();
	CLUEHistogram64 h;


	unsigned int* hostData = new unsigned int[1000];	

	for (unsigned int i = 0; i < 1000; i++)
	{
		hostData[i] = 10; 
	}

	cl_mem data = CLUEMemoryCreate(CL_MEM_READ_WRITE, sizeof(unsigned int)*1000, hostData);

	delete[] hostData;

	h.Compute(data, 1000);
	h.Dump();

	CLUEMemoryDestroy(data);

	CLUEContextDestroy();
    return 0;
}
