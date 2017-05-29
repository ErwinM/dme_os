; boot.s
; there is no need to load the kernel high at boot
; dme has no awkward io mappings in low memory
; so:
; - we will load it at 0x0 at map it high
; - then jump into the high mapping

; lets assume (oh o) for now that the entire kernel is 2 pages
; and that dme will come up in system mode..

; setup mapping of kernel to 0x1000
; page 2 -> 0
; page 3 -> 1
ldi r1, 0x3
ldi r2, 0x2
wpte r2, r1

ldi r2, 0x103
ldi r3, 3
wpte r3, r2

; identity map the first 2 pages or execution would stop
wpte r0, r1
ldi r1, 1
wpte r1, r2

; and the i/o memory mapped page
ld16 r2, 0x1f03
ldi r1, 31
wpte r1, r2
; turn on paging (not yet)
lcr r1
ori r1, r1, 4
scr r1

; setup IVEC
la16 r1, _trap
wivec r1

; setup SP
la16 r1, 0x1000
mov sp, r1

; jump into c
la16 r1, _kmain
br.r r1

hlt
_trap:
	defw 0xbabe











;	DME assembly file, generated by lcc 4.2

;	.global _kmain
;	.code
_kmain:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,L2_kmain
	push	r4
	addi	r1,pc,2
	br	_kprintf ; jaddr
	mov	r1,r0
L1_kmain:
	pop	bp
	pop	pc

;	.extern _kprintf
	.data
L2_kmain:
	defstr "DME OS.."
;	.end
;	DME assembly file, generated by lcc 4.2

;	.global _kprintf
;	.code
_kprintf:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	stw	-2(bp),r0
	la16	r4,L3_console
	br.r r4
L2_console:
	ldw	r4,-2(bp)
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	push	r4
	addi	r1,pc,2
	br	_putc ; jaddr
	ldw	r4,-2(bp)
	addi	r4,r4,1
	stw	-2(bp),r4
L3_console:
	ldw	r4,-2(bp)
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	skip.eq r4,r0
	br L2_console
L1_console:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _putc
;	.end
_putc:
	; satisfy calling convention
	; we are not using stack so we can ommit some
	push r1
	push bp
	mov bp, sp
	; setup a pointer to uart reg at 0xff90
	la16 r4, 0xff90

	; wait until tx is free
check_tx_free_uart:
	ldi r1, 5
	add r1, r1, r4
	ldw r1, r0(r1)
	ldi r2, 0x60
	and r1, r1, r2
	addskp.z r2, r2, r1
	br check_tx_free_uart
	; tx is free, load char (SP+2) and write to UART
	addi r1, bp, 4
	ldw r3, r0(r1)
	stb r0(r4), r3
	pop	bp
	pop	pc