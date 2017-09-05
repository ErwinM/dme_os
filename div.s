
la16 r1, 0x800
mov sp, r1
mov bp, r1

ld16 r1, 0x1000
push r1
ld16 r1, 0x800
push r1
ldi r2, 6
add r1, pc, r2
la16 r2, _div
br.r r2
addi sp, sp, 4
mov r2, r1

hlt


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