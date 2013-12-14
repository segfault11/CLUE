//-----------------------------------------------------------------------------
#include <iostream>
#include "Histogram64.h"
#include "../Core/Program.h"
#include "../Core/Memory.h"
//-----------------------------------------------------------------------------
#define TO_STRING(x) #x
//-----------------------------------------------------------------------------
// 	OpenCL Histogram Kernel Definition
//-----------------------------------------------------------------------------
const char* histogramKernel =
TO_STRING(
	__kernel void computeHistogram(
		__global uint* histogram,
		__global uint* data,
		uint numData
	)
	{
		int i = get_global_id(0);	
		
		if (i >= numData) 
		{
		    return;
		}

		int hi = data[i];
		atomic_add(histogram + hi, 1);
	}
);
//-----------------------------------------------------------------------------
static bool isProgInitialized = false;
static cl_program program;
static cl_kernel kernel;
static size_t local;
//-----------------------------------------------------------------------------
CLUEHistogram64::CLUEHistogram64()
{
	if (!isProgInitialized)
	{
		program = CLUEProgramCreateWithSource(
				1, 
				static_cast<const char**>(&histogramKernel)
			);

		kernel = CLUEKernelCreate(program, "computeHistogram");
		local = CLUEKernelGetWorkGroupSize(kernel);
		std::cout << "work group size " << local << std::endl;
		isProgInitialized = true;
	}

    unsigned int d[64];

    for (unsigned int i = 0; i < 64; i++) 
    {
        d[i] = 0;
    }

	this->histogram = CLUEMemoryCreate(
			CL_MEM_READ_WRITE | CL_MEM_COPY_HOST_PTR,
			sizeof(unsigned int)*64, 
			d
		);

}
//-----------------------------------------------------------------------------
CLUEHistogram64::~CLUEHistogram64()
{
	if (isProgInitialized)
	{
		CLUEProgramDestroy(program);
		isProgInitialized = false;
	}

	CLUEMemoryDestroy(this->histogram);
}
//-----------------------------------------------------------------------------
void CLUEHistogram64::Compute(cl_mem data, size_t numData)
{
    size_t global = numData % local == 0 ? numData : (numData/local + 1)*local;
    
	CLUEKernelSetArgument(kernel, 0, sizeof(cl_mem), &this->histogram);
	CLUEKernelSetArgument(kernel, 1, sizeof(cl_mem), &data);
	CLUEKernelSetArgument(kernel, 2, sizeof(unsigned int), &numData);
	CLUEKernelEnqueue(kernel, 1, &global, &local); 

    std::cout << "local " << local << std::endl;
    std::cout << "global " << numData << std::endl;
}
//-----------------------------------------------------------------------------
void CLUEHistogram64::Dump() const
{
	unsigned int* hostData = new unsigned int[64];

	CLUEMemoryCopyToHostData(this->histogram, sizeof(unsigned int)*64, hostData);

	for (unsigned int i = 0; i < 64; i++)
	{                          
	    std::cout << i << " " << hostData[i] << std::endl; 
	}
	
	delete[] hostData; 
}
//-----------------------------------------------------------------------------
