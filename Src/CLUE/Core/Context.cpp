//-----------------------------------------------------------------------------
#include <iostream>
#include "Context.h"
#include "Error.h"
#include "Program.h"
//-----------------------------------------------------------------------------
#define TO_STRING(x) #x
//-----------------------------------------------------------------------------
static const char* setZeroKernel =
TO_STRING(
    __kernel void setZero(__global int* data, uint numData)
    {
        int id = get_global_id(0);

        if (id >= numData) 
        {
            return;
        }

        data[id] = 0;
    }
);
//-----------------------------------------------------------------------------
static cl_device_id deviceID;
static cl_context context;
static cl_command_queue commands;
static bool isInitialized = false;
static cl_program program;
cl_kernel zeroKernel;
//-----------------------------------------------------------------------------
#define CHECK_INITIALIZED if (!isInitialized) {CLUE_ERROR(0, "CLUEContext was not initialized")}
//-----------------------------------------------------------------------------
void CLUEContextCreateWithGPU()
{
	if (isInitialized) 
	{
		CLUE_ERROR(0, "Context already initialized")
		return;
	}

	isInitialized = false;

	cl_platform_id platformID;

	clGetPlatformIDs(1, &platformID, NULL);

	cl_int err = clGetDeviceIDs(
			platformID, 
			CL_DEVICE_TYPE_GPU, 
			1, 
			&deviceID,
			NULL
		);	
	CLUE_CHECK_CL_ERROR (err, "Could not get GPU.")	

	context = clCreateContext(NULL, 1, &deviceID, NULL, NULL, &err);
	CLUE_CHECK_CL_ERROR (err, "Could not create context.")

	commands = clCreateCommandQueue(context, deviceID, 0, &err);	
	CLUE_CHECK_CL_ERROR (err, "Could not create command queue.")

	isInitialized = true;

    program = CLUEProgramCreateWithSource(1, &setZeroKernel);
    zeroKernel = CLUEKernelCreate(program, "setZero");
}
//-----------------------------------------------------------------------------
void CLUEContextDestroy()
{
	if (!isInitialized) 
	{	    
		return;
	}

	clReleaseCommandQueue(commands);
	clReleaseContext(context);
	//clReleaseDevice(deviceID);
    CLUEKernelDestroy(zeroKernel);
    CLUEProgramDestroy(program);
}
//-----------------------------------------------------------------------------
cl_context CLUEContextGetCLContext()
{
	CHECK_INITIALIZED

	return context;
}
//-----------------------------------------------------------------------------
cl_command_queue CLUEContextGetCLCommandQueue()
{
	CHECK_INITIALIZED

	return commands;
}
//-----------------------------------------------------------------------------
cl_device_id CLUEContextGetDevice()
{
	CHECK_INITIALIZED

	return deviceID;
}
//-----------------------------------------------------------------------------
void CLUEContextDump()
{
	CHECK_INITIALIZED

	char name[1024];
    size_t size;

	clGetDeviceInfo(deviceID, CL_DEVICE_NAME, sizeof(name), name, NULL);
	std::cout << "CL_DEVICE_NAME: " << name << std::endl;
	clGetDeviceInfo(deviceID, CL_DEVICE_VERSION, sizeof(name), name, NULL);
	std::cout << "CL_DEVICE_VERSION: " << name << std::endl;

    clGetDeviceInfo(
        deviceID, 
        CL_DEVICE_MAX_WORK_GROUP_SIZE, 
        sizeof(size), 
        &size, 
        NULL
    );

    std::cout << "CL_DEVICE_MAX_WORK_GROUP_SIZE: " << size << std::endl; 
}
//-----------------------------------------------------------------------------

