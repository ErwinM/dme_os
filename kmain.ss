;	DME assembly file, generated by lcc 4.2

 ; INT_MAX: ffffffff;	.global _kmain
;	.code
_kmain:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,L2
	push	r4
	la16	r2,_kprintf ; jaddr
	addi	r1,pc,2
	br.r	r2
	la16	r2,_kinit1 ; jaddr
	addi	r1,pc,2
	br.r	r2
	ld16	r4, 2048
	push	r4
	la16	r2,_kfree ; jaddr
	addi	r1,pc,2
	br.r	r2
	mov	r1,r0
L1:
	pop	bp
	pop	pc

;	.extern _kfree
;	.extern _kinit1
;	.extern _kprintf
	.data
L2:
	defstr "DME OS.."
;	.end