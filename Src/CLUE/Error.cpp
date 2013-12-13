//-----------------------------------------------------------------------------
#include "Error.h"
#include <iostream>
//-----------------------------------------------------------------------------
void CLUEErrorReport(
	const char* file, 
	const char* function, 
	int line,
	const char* message,
	cl_int err
)
{
	std::cout << "Error in: \n";
	std::cout << "\tFILE: " << file;	
	std::cout << "\tFUNCTION: " << function;	
	std::cout << "\tLINE: " << line;	
	std::cout << "\nMessage:\n\t" << message; 
	std::cout << "\nCode:\n\t" << err << std::endl; 
	exit(0);
}
//-----------------------------------------------------------------------------
