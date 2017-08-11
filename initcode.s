;  Initial process execs /init.
;
; include "syscall.h"
; include "traps.h"
;
;
;  exec(init, argv) = args according to C function call convention (pushed from right to left)

_initcodestart:
  la16 r1, L2
  push r1
	la16 r1, L1
  push r1
	push r0    ; where caller pc would be
  ldi r1, 1  ; syscall 7 = exec
	push r1
	brk
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

