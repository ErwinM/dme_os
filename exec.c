
int
exec(char *path, char **argv)
{

	struct inode *ip;
	/* lookup inode */
	if ((ip = namei(ip))==0){
		kprintf("exec: file not found!\n");
		halt();
	}

  // Check header



  // Load program into memory.

  // Allocate two pages at the next page boundary.
  // Make the first inaccessible.  Use the second as the user stack.


  // Push argument strings, prepare rest of stack in ustack.


  // Save program name for debugging.


  // Commit to the user image.

}