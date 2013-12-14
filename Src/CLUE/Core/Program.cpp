//-----------------------------------------------------------------------------
#include <iostream>
#include "Program.h"
#include "Context.h"
#include "Error.h"
//-----------------------------------------------------------------------------
cl_program CLUEProgramCreateWithSource(cl_uint count, const char** strings)
{
	cl_int err;
	cl_program program = clCreateProgramWithSource(
			CLUEContextGetCLContext(),
			count,
			strings,
			NULL,
			&err
		);

	CLUE_CHECK_CL_ERROR(err, "Could not create program.");
	
	cl_device_id id = CLUEContextGetDevice();

	err = clBuildProgram(program, 1, &id, NULL, NULL, NULL);
	
	if (err != CL_SUCCESS) 
	{
        size_t len;
        clGetProgramBuildInfo(
        	program,
        	CLUEContextGetDevice(),
        	CL_PROGRAM_BUILD_LOG,
        	0, 
        	NULL, 
        	&len
        );

        char* log = new char[len];
       
        clGetProgramBuildInfo(
        	program,
        	CLUEContextGetDevice(),
        	CL_PROGRAM_BUILD_LOG,
        	len, 
        	log, 
        	NULL
        );

		CLUE_ERROR(err, log)
	}

	return program;
}
//-----------------------------------------------------------------------------
void CLUEProgramDestroy(cl_program program)
{
	clReleaseProgram(program);
}
//-----------------------------------------------------------------------------
cl_kernel CLUEKernelCreate(cl_program program, const char* name)
{
	cl_int err;
	
 	cl_kernel kernel = clCreateKernel(program, name, &err);
	CLUE_CHECK_CL_ERROR(err, "Could not create kernel");

	return kernel;
}
//-----------------------------------------------------------------------------
void CLUEKernelSetArgument(
	cl_kernel kernel, 
	cl_uint argIndex, 
	size_t size, 
	const void* argValue
)
{
	cl_int err;
	err = clSetKernelArg(kernel, argIndex, size,  argValue);
	CLUE_CHECK_CL_ERROR(err, "Could not set kernel argument");
}
//-----------------------------------------------------------------------------
void CLUEKernelEnqueue(
	cl_kernel kernel, 
	cl_uint workDim, 
	const size_t* globalWorkSize,
	const size_t* localWorkSize
)
{
	cl_int err = clEnqueueNDRangeKernel(
    		CLUEContextGetCLCommandQueue(),
    		kernel,
    		workDim,
    		NULL,
    		globalWorkSize,
    		localWorkSize,
    		0, 
    		NULL, 
    		NULL
    	);
    CLUE_CHECK_CL_ERROR(err, "Kernel execution failed.");
}
//-----------------------------------------------------------------------------
size_t CLUEKernelGetWorkGroupSize(cl_kernel kernel)
{
	size_t size;
	cl_int err = clGetKernelWorkGroupInfo(
			kernel, 
			CLUEContextGetDevice(),
			CL_KERNEL_WORK_GROUP_SIZE,
			sizeof(size_t),
			&size,
			NULL
		);
	
	CLUE_CHECK_CL_ERROR(err, "Could not get work group size.")

	return size;
}
//-----------------------------------------------------------------------------
void CLUEKernelDestroy(cl_kernel kernel)
{
	CLUE_CHECK_CL_ERROR(clReleaseKernel(kernel), "Could not release kernel.")
}
//-----------------------------------------------------------------------------
