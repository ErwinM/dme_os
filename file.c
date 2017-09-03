#include "types.h"
#include "file.h"

struct file ftable[TOTFILE];

uint
fileopen()
{
	// check if we have fd left
	// check if currproc has unused ofile slots left

}