//-----------------------------------------------------------------------------
#include "Context.h"
#include "Error.h"
//-----------------------------------------------------------------------------
static cl_device_id deviceID;
static cl_context context;
static cl_command_queue commands;
static bool isInitialized = false;
//-----------------------------------------------------------------------------
#define CHECK_INITIALIZED if (!isInitialized) {CLUE_ERROR(0, "CLUEContext was not initialized")}
//-----------------------------------------------------------------------------
void CLUEContextCreateWithGPU()
{
	if (isInitialized) 
	{
	    CLUEContextDestroy();
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
