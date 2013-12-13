#ifndef CONTEXT_H
#define CONTEXT_H

#include "Common.h"

/// Creates a CLUE context. Takes the first GPU it finds and creates a context
/// and command queue from it.
void CLUEContextCreateWithGPU();

/// Gets the cl context that was created along with the CLUE context.
cl_context CLUEContextGetCLContext();

/// Gets the cl command queue that was created along with the CLUE context.
cl_command_queue CLUEContextGetCLCommandQueue();

/// Gets the device assciated with the CLUE context.
cl_device_id CLUEContextGetDevice();

/// Destroys the CLUE context.
void CLUEContextDestroy();

/// Dumps information about the context to the console.
void CLUEContextDump();

#endif /* end of include guard: CONTEXT_H */
