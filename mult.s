; UNSIGNED multiplication
;
; USAGE:

; push bp
; push op1
; push op2
; addi r1, pc, 4
; push r1
; br mult
; ; result will be in r1 as LCC expects
; pop bp

mult:
	pop bp ; return address
	pop r2 ; op1
	pop r3 ; op2
	mov r1, r0 ; result reg
; if a > b
	skip.gt r2, r3
	br L2
; switch them
	mov r4, r2
	mov r2, r3
	mov r3, r4

multL2:
; while r1 > 1 loop
	ldi r4, 1
	skip.gt r2, r4
	br multL3
; check if r1 is even/odd
	andi r4, r2, 1
	addskpi.nz r4, r4, 1
	add r1, r1, r3
	shr r2, r2, 1
	shl r3, r3, 1
	br multL2
multL3:
	andi r4, r1, 1
	addskpi.nz r4, r4, 1
	add r1, r1, r3
	br.r bp