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

#endif /* end of include guard: PROGRAM_H */
