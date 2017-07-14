;  Initial process execs /init.
;
; include "syscall.h"
; include "traps.h"
;
;
;  exec(init, argv)
initcodestart:
  ldi r1, argv
  push r1
	ldi r1, init
  push r1
	push r0    ; where caller pc would be
  ldi r1, 7 ; syscall 7 = exec
  syscall

;# for(;;) exit();
;exit:
;  movl $SYS_exit, %eax
;  int $T_SYSCALL
;  jmp exit
;
;# char init[] = "/init\0";
init:
 defstr "/init\0"
;
;# char *argv[] = { init, 0 };
;.p2align 2
;
argv:
  defw init
	defw 0

