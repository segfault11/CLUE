//-----------------------------------------------------------------------------
#include "Context.h"
#include "Error.h"
//-----------------------------------------------------------------------------
static cl_device_id deviceID;
static cl_context context;
static cl_command_queue commands;
//-----------------------------------------------------------------------------
void CLUEContextCreateWithGPU()
{
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
}
//-----------------------------------------------------------------------------
void CLUEContextDestroy()
{
	clReleaseCommandQueue(commands);
	clReleaseContext(context);
	//clReleaseDevice(deviceID);
}
//-----------------------------------------------------------------------------
