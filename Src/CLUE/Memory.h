#ifndef MEMORY_H
#define MEMORY_H

#include "Common.h"

/// Creates OpenCL memory from the current CLUE context
///
/// \param flags OpenCL flags describing the usage of the memory (see official
///        documentatio)
/// \param size Size in bytes of the memory.
/// \param hostPtr Host data that might be used to initialized the device memory.
/// 
/// \return The OpenCL memory created. 
cl_mem CLUEMemoryCreate(cl_mem_flags flags, size_t size, void* hostPtr);

/// Uploads data from the host to the device memory.
/// NOTE: 
/// * This function blocks until the data has been uploaded
/// * This function doesnt wait for OpenCL to be finished when uploading the
///   data.
///
/// \param mem Device memory the data is uploaded to.
/// \param size Size in bytes of the to be uploaded data.
/// \param hostPtr Pointer to the data to be uploaded.
void CLUEMemoryUploadHostData(cl_mem mem, size_t size, void* hostPtr);

/// Copies data back from device to host.
/// NOTE: 
/// * This function blocks until the data has been uploaded
/// * This function doesnt wait for OpenCL to be finished when uploading the
///   data.
///
/// \param mem Device memory the data is copied back from.
/// \param size Size in bytes of the to be copied data.
/// \param hostPtr Pointer to the data to be copied to.
void CLUEMemoryCopyToHostData(cl_mem mem, size_t size, void* hostPtr);

/// Destroys OpenCL memory.
void CLUEMemoryDestroy(cl_mem mem);

#endif /* end of include guard: MEMORY_H */
