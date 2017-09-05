#include "types.h"
#include "file.h"

struct file ftable[TOTFILE];

struct *file
filealloc()
{
	struct file *f;
	for(f=ftable;f<&ftable[TOTFILE];f++){
		if(f->ref == 0)
			return f;
	}
	kprintf("filealloc: file table full!\n")
	halt();
}