; MEMSET (char *dst, int c, uint n)
; bp + 8 has n
; bp + 6 has c
; bp + 4 has dst

_memset:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r1,4(bp) ; load dst
	ldw	r2,6(bp) ; load c
	ldw	r3,8(bp) ; load n
	; skip if n = aligned
	andi r4,r3,1
	skip.eq r4, r0
	br _stosb
	; skip if dst = aligned
	andi r4, r1, 1
	skip.eq r4, r0
	br _stosb
	; both n and dst are 2 byte aligned
	shl r4, r2, 8
	or r2, r2, r4
	subi r3, r3, 2
_stoswL1:
	add	r4,r1,r3
	stw	r0(r4),r2
	addskpi.z r3, r3, -2
	br _stoswL1
	stw r0(r1), r2
	br _memsetend
_stosb:
	subi r3, r3, 1
_stosbL1:
	add	r4,r1,r3
	stb	r0(r4),r2
	addskpi.z r3, r3, -1
	br _stosbL1
	stb r0(r1), r2
_memsetend:
	pop	bp
	pop	pc

_halt:
  hlt

_breek:
	push r1
	brk
	pop pc

_writepte:
	push r1
	push bp
	mov bp, sp
	ldw r1, 4(bp)
	ldw r2, 6(bp)
	wpte r1, r2
	pop bp
	pop pc

_readpt:
; readpt(ptb, pointer to uint[32])
	push r1
	push bp
	mov bp, sp
	ldw r1, 4(bp) ; ptb
	ldw r2, 6(bp) ; ptr to pgtable array
	ldi r3, 32 ; one extra cause we sub 1 in loop
_readptL1:
	subi r3, r3, 1
	add r4, r1, r3
	lpte r4, r4
	stw r3(r2), r4
	skip.eq r3, r0
	br _readptL1
	pop bp
	pop pc


_switchptb:
	push r1
	push bp
	mov bp, sp
	ldw r1, 4(bp)
	wptb r1
	pop bp
	pop pc

_clearptb:
; clear all page entries in an address space
	push r1
	push bp
	mov bp, sp
	ldw r1, 4(bp)
	ldi r2, 32 ; one extra cause we sub 1 in loop
	add r2, r1, r2
_clearptbL1:
	subi r2, r2, 1
	wpte r2, 0
	skip.eq r2, r1
	br _clearptbL1
	pop bp
	pop pc

_memmove:
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

_strcopy:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r4,4(bp)    ; dst
	ldw	r3,6(bp)    ; src
	ldw	r2,8(bp)    ; n
	add	r4,r4,r2
	add	r3,r3,r2
	br _strcopyL3
_strcopyL2:
	subi	r2,r2,1
	addi	r3,r3,-1
	addi	r4,r4,-1
	ldb	r1,r0(r3)
	skip.eq r1,r0
	br _strcopyL4
	stb r0(r4),r0
	br _strcopyL3
_strcopyL4:
	stb	r0(r4),r1
_strcopyL3:
	skip.eq r2,r0
	br _strcopyL2
	mov	r1,r4
	mov	sp, bp
	pop	bp
	pop	pc