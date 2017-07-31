;	DME assembly file, generated by lcc 4.2

 ; INT_MAX: ffffffff

;	.global _trap
;	.code
_trap:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r4,6(bp)
	push	r4
	ldw	r4,4(bp)
	push	r4
	la16	r4,L2
	push	r4
	la16	r2,_kprintf
	addi	r1,pc,2
	br.r	r2
	ldi	r2,6
	add	sp,sp,r2
	ldw	r4,4(bp)
	ld16	r3, 16
	skip.eq r4,r3
	br L3
	la16	r4,L5
	push	r4
	la16	r2,_kprintf
	addi	r1,pc,2
	br.r	r2
	ldi	r2,2
	add	sp,sp,r2
L3:
	la16	r2,_breek
	addi	r1,pc,2
	br.r	r2
L1:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _breek
;	.extern _kprintf
	.data
L5:
	defb 83
	defb 89
	defb 83
	defb 67
	defb 65
	defb 76
	defb 76
	defb 33
	defb 0
L2:
	defb 84
	defb 114
	defb 97
	defb 112
	defb 58
	defb 32
	defb 37
	defb 100
	defb 44
	defb 32
	defb 117
	defb 83
	defb 80
	defb 58
	defb 32
	defb 37
	defb 120
	defb 10
	defb 0
;	.end