//-----------------------------------------------------------------------------
#include "Common.h"
//-----------------------------------------------------------------------------
std::string CLUEErrorToString(cl_int err)
{
	switch (err)
	{
		case CL_INVALID_PROGRAM:
			return "CL_INVALID_PROGRAM";

		case CL_INVALID_PROGRAM_EXECUTABLE:
			return "CL_INVALID_PROGRAM_EXECUTABLE";		

		case CL_INVALID_COMMAND_QUEUE:
			return "CL_INVALID_COMMAND_QUEUE";

		case CL_INVALID_KERNEL_NAME:
			return "CL_INVALID_KERNEL_NAME";

		case CL_INVALID_KERNEL:
			return "CL_INVALID_KERNEL";

		case CL_INVALID_CONTEXT:
			return "CL_INVALID_CONTEXT";			
	
		case CL_INVALID_KERNEL_DEFINITION:
			return "CL_INVALID_KERNEL_DEFINITION";	

		case CL_INVALID_VALUE:
			return "CL_INVALID_VALUE";		

		case CL_INVALID_KERNEL_ARGS:
			return "CL_INVALID_KERNEL_ARGS";

		case CL_INVALID_WORK_DIMENSION:
			return "CL_INVALID_WORK_DIMENSION";

		case CL_INVALID_WORK_GROUP_SIZE:
			return "CL_INVALID_WORK_GROUP_SIZE";

		case CL_INVALID_WORK_ITEM_SIZE:
			return "CL_INVALID_WORK_ITEM_SIZE";

		case CL_INVALID_GLOBAL_OFFSET:
			return "CL_INVALID_GLOBAL_OFFSET";

		case CL_OUT_OF_RESOURCES:
			return "CL_OUT_OF_RESOURCES";

		case CL_MEM_OBJECT_ALLOCATION_FAILURE:
			return "CL_MEM_OBJECT_ALLOCATION_FAILURE";

		case CL_INVALID_EVENT_WAIT_LIST:
			return "CL_INVALID_EVENT_WAIT_LIST";

		case CL_OUT_OF_HOST_MEMORY:
			return "CL_OUT_OF_HOST_MEMORY";

		case CL_SUCCESS:
			return "CL_SUCCESS";
	
		default:
			return "UNKNOWN ERROR STRING";
	}
}
//-----------------------------------------------------------------------------
