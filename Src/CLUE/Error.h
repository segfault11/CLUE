#ifndef ERROR_H
#define ERROR_H

#include "Common.h"

#define CLUE_CHECK_CL_ERROR(err, msg)  \
	if (err != CL_SUCCESS)             \
	{ 								   \
		CLUE_ERROR( msg, err )	       \
	}  								   

#define CLUE_ERROR(msg, code) CLUEErrorReport(__FILE__, __FUNCTION__, __LINE__, msg, code);

void CLUEErrorReport(
	const char* file, 
	const char* function, 
	int line,
	const char* message,
	cl_int err
);

#endif /* end of include guard: ERROR_H */
