#ifndef HISTOGRAM64_H
#define HISTOGRAM64_H

#include "../Core/Common.h"

class CLUEHistogram64 
{
public:
   	CLUEHistogram64();
    virtual ~CLUEHistogram64();

	void Compute(cl_mem data, size_t numData);
	const cl_mem* GetHistogram() const;

	/// Dumps the histogram to the terminal (for debugging)
	void Dump() const;

private:
    cl_mem histogram; 
};

#endif /* end of include guard: HISTOGRAM64_H */
