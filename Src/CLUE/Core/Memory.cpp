//-----------------------------------------------------------------------------
#include "Memory.h"
#include "Error.h"
#include "Context.h"
#include "Program.h"
//-----------------------------------------------------------------------------
extern cl_kernel zeroKernel;
//-----------------------------------------------------------------------------
cl_mem CLUEMemoryCreate(cl_mem_flags flags, size_t size, void* hostPtr)
{
	cl_int err;

	cl_mem mem = clCreateBuffer(
			CLUEContextGetCLContext(), 
			flags,
			size,
			hostPtr,
		 	&err
		);
	
	CLUE_CHECK_CL_ERROR(err, "Could not create memory.");

	return mem;
}
//-----------------------------------------------------------------------------
void CLUEMemoryDestroy(cl_mem mem)
{
	CLUE_CHECK_CL_ERROR(clReleaseMemObject(mem), "Failed releasing memory");
}
//-----------------------------------------------------------------------------
void CLUEMemoryUploadHostData(cl_mem mem, size_t size, void* hostPtr)
{
	cl_int err = clEnqueueWriteBuffer(
			CLUEContextGetCLCommandQueue(),
			mem,
			CL_TRUE,
			0,
			size,
			hostPtr,
			0,
			NULL,
			NULL
		);

	CLUE_CHECK_CL_ERROR(err, "Failed uploading data.") 
}
//-----------------------------------------------------------------------------
void CLUEMemorySetZero(cl_mem mem, size_t size)
{
    unsigned int numData = size/sizeof(unsigned int);
    size_t local = CLUEKernelGetWorkGroupSize(zeroKernel);
    size_t global = numData % local == 0 ? numData : (numData/local + 1)*local;

    CLUEKernelSetArgument(zeroKernel, 0, sizeof(cl_mem), &mem);  
    CLUEKernelSetArgument(zeroKernel, 1, sizeof(unsigned int), &numData);  
    CLUEKernelEnqueue(zeroKernel, 1, &global, &local);
}
//-----------------------------------------------------------------------------
void CLUEMemoryMemset(cl_mem mem, cl_char value, size_t size)
{
//	cl_int err = clEnqueueFillBuffer(
//			CLUEContextGetCLCommandQueue(),
//			mem,
//			&value,
//			sizeof(cl_char),
//			0,
//			size,
//			NULL,
//			NULL,
//			NULL	
//		);
}
//-----------------------------------------------------------------------------
void CLUEMemoryCopyToHostData(cl_mem mem, size_t size, void* hostPtr)
{
	cl_int err = clEnqueueReadBuffer(
			CLUEContextGetCLCommandQueue(),
			mem,
			CL_TRUE,
			0,
			size,
			hostPtr,
			0,
			NULL,
			NULL
		);

	CLUE_CHECK_CL_ERROR(err, "Failed uploading data.") 
}
//-----------------------------------------------------------------------------
