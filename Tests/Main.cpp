//-----------------------------------------------------------------------------
#include <CLUE/Core/Context.h>
#include <CLUE/Core/Memory.h>
#include <CLUE/Histogram/Histogram64.h>
#include <iostream>
//-----------------------------------------------------------------------------
#define NUM_DATA 10000
//-----------------------------------------------------------------------------
int main(int argc, const char *argv[])
{
    CLUEContextCreateWithGPU();
	CLUEContextDump();
	CLUEHistogram64 h;


	unsigned int* hostData = new unsigned int[NUM_DATA];	

	for (unsigned int i = 0; i < NUM_DATA; i++)
	{
		hostData[i] = i % 64; 
	}

	cl_mem data = CLUEMemoryCreate(CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(unsigned int)*NUM_DATA, hostData);

	h.Compute(data, NUM_DATA);
    h.Dump();

    CLUEMemorySetZero(data, sizeof(unsigned int)*NUM_DATA);   
    CLUEMemoryCopyToHostData(data, sizeof(unsigned int)*NUM_DATA, hostData);

	delete[] hostData;
	CLUEMemoryDestroy(data);
	CLUEContextDestroy();
    return 0;
}
//-----------------------------------------------------------------------------
