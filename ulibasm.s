_halt:
	push r1 ; for debugging
	hlt

_breek:
	push r1
	brk
	pop pc

;_strcpy:
;	push	r1
;	push	bp
;	mov	bp, sp
;	ldw	r4,4(bp)    ; dst
;	ldw	r3,6(bp)    ; src
;	ldw	r2,8(bp)    ; n
;	add	r4,r4,r2
;	add	r3,r3,r2
;	br _strcopyL3
;_strcopyL2:
;	subi	r2,r2,1
;	addi	r3,r3,-1
;	addi	r4,r4,-1
;	ldb	r1,r0(r3)
;	skip.eq r1,r0
;	br _strcopyL4
;	stb r0(r4),r0
;	br _strcopyL3
;_strcopyL4:
;	stb	r0(r4),r1
;_strcopyL3:
;	skip.eq r2,r0
;	br _strcopyL2
;	mov	r1,r4
;	mov	sp, bp
;	pop	bp
;	pop	pc

memmove:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r4,4(bp)    ; dst
	ldw	r3,6(bp)    ; src
	ldw	r2,8(bp)    ; n
	add	r4,r4,r2
	add	r3,r3,r2
	br _memmoveL3
_memmoveL2:
	subi	r2,r2,1
	addi	r3,r3,-1
	addi	r4,r4,-1
	ldb	r1,r0(r3)
	stb	r0(r4),r1
_memmoveL3:
	skip.eq r2,r0
	br _memmoveL2
	mov	r1,r4
	mov	sp, bp
	pop	bp
	pop	pc