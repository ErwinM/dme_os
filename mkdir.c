//  mkdir - straight from xv6

#include "types.h"
//#include "stat.h"
//#include "user.h"

int
main(int argc, char *argv[])
{
  int i;

	printf("mkdir running.\n");

  if(argc < 2){
    printf(2, "Usage: mkdir files...\n");
    exit();
  }

  for(i = 1; i < argc; i++){
    printf("mkdir: argument %d is %s\n", i, argv[i]);
		// if(mkdir(argv[i]) < 0){
    //   printf(2, "mkdir: %s failed to create\n", argv[i]);
    //   break;
    // }
  }

  exit();
}
