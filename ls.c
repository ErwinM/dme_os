#include "types.h"
#include "fs.h"
// ls.c


char buf[14];

int
main()
{
	struct dirent de;

	int fd, i;



	printf("LS is running!\n\n\n");

	// ls should list the contents of the current dir for now
	// open the cwd for reading
	// read each entry
	// list it
	fd = open(".", 0);

	while(de.inum){
		read(fd, &de, (uint)sizeof(de));
		printf("%s", de.name);
	}
	breek();
	exit();
}