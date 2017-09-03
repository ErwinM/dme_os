;  Initial process execs /init.
;
; include "syscall.h"
; include "traps.h"
;
;
;  exec(init, argv) = args according to C function call convention (pushed from right to left)
;  FIXME: this will fail once page protection user/system is implemented as the string pointers will point
; 			  into protected memory

_initcodestart:
  la16 r1, L2
  push r1
	la16 r1, L1
  push r1
	push r0    ; where caller pc would be
	push r0    ; where bp would be
  ldi r1, 7  ; syscall 7 = exec
	push r1
	syscall
	hlt
	hlt
	hlt

;# for(;;) exit();
;exit:
;  movl $SYS_exit, %eax
;  int $T_SYSCALL
;  jmp exit
;
;# char init[] = "/init\0";
L1:
 defstr "/init"
;
;# char *argv[] = { init, 0 };
;.p2align 2
;
L2:
  defw L1
	defw 0

