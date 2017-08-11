; this routine pulls the uregs into the child->contextframe
; so that allocproc can use them to recreate
;
; copyuregs(proc->cf)


; _contextret:
; ; we are returning from a trap after a context switch
; ; this means we need to restore the user registers which were saved
; ; to the kstack as a trapframe when we trapped
; ; sp is pointing at the bottom of tf (r1)
; 	pop.u r1
; 	pop.u r2
; 	pop.u r3
; 	pop.u r4
; 	pop.u bp
; 	pop.u sp
; 	pop.u pc
; 	pop r1
; 	wcr.u r1
; 	reti

_copyuregs:
	push r1
	push bp
	mov bp, sp

	ldw r1, 4(bp) ; proc->context* ; this points into the child's kstack

	; what is going on here:
	; we are pushing user reg r1 onto the kstack (only instruction for getting a ureg in trap mode)
	; we then immediately pop it of the kstack into r2 and store it in its intended location
	push.u r1
	pop r2
	stw 0(r1), r2

	push.u r2
	pop r2
	addi r1,r1, 2
	stw 0(r1), r2

	push.u r3
	pop r2
	addi r1,r1, 2
	stw 0(r1), r2

	push.u r4
	pop r2
	addi r1,r1, 2
	stw 0(r1), r2

	push.u bp
	pop r2
	addi r1,r1, 2
	stw 0(r1), r2

	push.u sp
	pop r2
	addi r1,r1, 2
	stw 0(r1), r2

	push.u pc
	pop r2
	addi r1,r1, 2
	stw 0(r1), r2

	lcr.u r2
	addi r1,r1, 2
	stw 0(r1), r2

	pop bp
	pop pc


