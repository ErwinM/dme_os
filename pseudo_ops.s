; http://www.tofla.iconbar.com/tofla/arm/arm02/index.htm
; !! need to add skipi instruction to make usable (uses too many regs atm)

; DIVIDE -------------------------
;
_div:
	pop r3 ; op1
	pop r2 ; op2
	mov r1, r0
	ldi r4, 1
divL1:
	skip.gt r2, r3
	br divL2
	shl r3, r3, 1
	shl r4, r4, 1
	br divL1

divL2:
	addskpi.nz r0, r4, -1
	br divL3
	shr r3, r3, 1
	shr r4, r4, 1

	skip.gte r2, r3
	br divL2
	sub r2, r2, r3
	or	r1, r1, r4
	br divL2

divL3:
	br.r bp ; return

; MODULO -------------------------
;
; (same algo as div, just returning remainer)
_mod:
	pop r3 ; op1
	pop r2 ; op2
	ldi r4, 1
modL1:
	skip.gt r2, r3
	br modL2
	shl r3, r3, 1
	shl r4, r4, 1
	br modL1

modL2:
	addskpi.nz r0, r4, -1
	br modL3
	shr r3, r3, 1
	shr r4, r4, 1

	skip.gte r2, r3
	br divL2
	sub r2, r2, r3
	br modL2

modL3:
	mov r1, r2
	br.r bp ; return

; MULTIPLY  -------------------------
;
; (unsigned)
_mult:
	pop r2 ; op1
	pop r3 ; op2
	mov r1, r0 ; result reg
; if a > b
	skip.gt r2, r3
	br multL2
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
	addskpi.nz r4, r4, -1
	add r1, r1, r3
	shr r2, r2, 1
	shl r3, r3, 1
	br multL2
multL3:
	andi r4, r1, 1
	addskpi.nz r4, r4, -1
	add r1, r1, r3
	br.r bp