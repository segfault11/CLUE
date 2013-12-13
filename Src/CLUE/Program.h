#ifndef PROGRAM_H
#define PROGRAM_H

#include "Common.h"

/// Creates an OpenCL program from source code.
///
/// \param count Number of strings that make up the source code.
/// \param strings Strings that make up the source code.
///
/// \return The created OpenCL program.
cl_program CLUEProgramCreateWithSource(cl_uint count, const char** strings);

/// Destroys an OpenCL program.
void CLUEProgramDestroy(cl_program program);


/// Create a kernel from an OpenCL program
///
/// \param program OpenCL program to create the kernel from.
/// \param name Name of the kernel function in the program's source code.
cl_kernel CLUEKernelCreate(cl_program program, const char* name);

/// Sets the argument for a kernel.
///
/// \param kernel Kernel which argument should be set.
/// \param argIndex Index of the argument.
/// \param size Size of the argument.
/// \param argValue Value of the argument.
void CLUEKernelSetArgument(
	cl_kernel kernel, 
	cl_uint argIndex, 
	size_t size, 
	const void* argValue
);

/// Enqeues a kernel to the command queue of the CLUE context.
void CLUEKernelEnqueue(
	cl_kernel kernel, 
	cl_uint workDim, 
	const size_t* globalWorkSize,
	const size_t* localWorkSize
);

/// Destroys a kernel.
void CLUEKernelDestroy(cl_kernel kernel);

#endif /* end of include guard: PROGRAM_H */
