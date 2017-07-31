; https://en.wikipedia.org/wiki/Division_algorithm#Integer_division_.28unsigned.29_with_remainder


; DIVIDE -------------------------
_div:
; normal function conventions to keep life simple
; we will not args to locals, since we kow what we are doing (he..)
; N is be in bp+6, D is in bp+4
; create 1 local to hold Q: bp-2
; r1 temp
; r2 cntr
; r3 load/store N/Q/D
; r4 R
	push r1
	push bp
	mov bp, sp
	ldi r2, 16
	mov r4, r0
	stw -2(bp), r0
divL1:
	subi r2, r2, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, 6(bp)
	and r1, r3, r1

	shr.r r1, r1, r2
	or r4, r4, r1

	ldw r3, 4(bp)
	skip.ulte r3, r4
	br divL2

	sub r4, r4, r3
	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, -2(bp)
	or r3, r3, r1
	stw -2(bp), r3

divL2:
	skip.eq r2, r0
	br divL1
	ldw r1, -2(bp)
	mov	sp, bp
	pop	bp
	pop	pc

; MODULO -------------------------
; UNSIGNED
; (same algo as div, just returning remainer)
_mod:
	push r1
	push bp
	mov bp, sp
	ldi r2, 16
	mov r4, r0
	stw -2(bp), r0
modL1:
	subi r2, r2, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, 6(bp)
	and r1, r3, r1

	shr.r r1, r1, r2
	or r4, r4, r1

	ldw r3, 4(bp)
	skip.ulte r3, r4
	br modL2

	sub r4, r4, r3
	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, -2(bp)
	or r3, r3, r1
	stw -2(bp), r3

modL2:
	skip.eq r2, r0
	br modL1
	mov r1, r4 ; transfer result to r1
	mov	sp, bp
	pop	bp
	pop	pc

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