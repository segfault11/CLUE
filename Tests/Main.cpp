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
		hostData[i] = 22; 
	}

	cl_mem data = CLUEMemoryCreate(CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR, sizeof(unsigned int)*1000, hostData);
//    CLUEMemoryUploadHostData(data, sizeof(unsigned int)*1000, hostData);


	h.Compute(data, 1000);
//    h.Dump();

    CLUEMemorySetZero(data, sizeof(unsigned int)*1000);   
    CLUEMemoryCopyToHostData(data, sizeof(unsigned int)*1000, hostData);


 
    for (unsigned int i = 0; i < 1000; i++)
    {                          
        std::cout << i <<  " -> " << hostData[i] << std::endl;                                                         
    }


	delete[] hostData;
	CLUEMemoryDestroy(data);
	CLUEContextDestroy();
    return 0;
}
