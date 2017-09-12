; when we trap we need to check if it is a timer irq (0x20)
; if it is we push all user space registers, if not than we don't...'
; the trap number is in sr1
; actually, we would also need to push everything on a fork syscall...
; lets try to implement a separate asm routine for that, the uregs are frozen anyway..

_alltraps:
	; if r1 == 0x20 then push.u everything else not
	; FIXME: this does not handle concurrent traps yet
	ldi r3, 0x20
	and r4, r1, r3
	skip.eq r4, r3
	br simpletrap
	hlt

_contextret:
; we are returning from a trap after a context switch
; this means we need to restore the user registers which were saved
; to the kstack as a trapframe when we trapped
; sp is pointing at the bottom of tf (r1)
	pop.u r1
	pop.u r2
	pop.u r3
	pop.u r4
	pop.u bp
	pop.u sp
	pop.u pc
	pop r1
	wcr.u r1
	reti

simpletrap:
	push.u pc
	push.u sp
	push.u r1
	push r1 				;trapnr
	mov r1, sp  		; GOTCHA: pushing sp pushing the updated value not the old value!!
	push r1
	la16 r3, _trap
	addi r1, pc, 2
	br.r r3

; when we return from a (non context switch) trap
trapret:
; we prob need to pop some more stuff of the stack but lets see
	addi sp, sp, 4 	; pops sp and sR1 (used to pass argument to trap(*tf))
	pop.u r1			 	; load return value to r1
	pop.u sp			 	; pop sp (will not have changed)
	pop.u pc			 	; will only have changed for exec syscall
	reti