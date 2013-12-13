//-----------------------------------------------------------------------------
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
	
	err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
	
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
