; boot.s
; there is no need to load the kernel high at boot
; dme has no awkward io mappings in low memory
; so:
; - we will load it at 0x0 at map it high
; - then jump into the high mapping

; boot.s will setup the address space for the scheduler context
; which will be mapped to ptb 0

; this code is linked at 0x8000 so it works when paging is on
	.code 0x8000


; map the first 15 physical pages to second half of address space (l 0x8000 to p 0x0 etc)
	ldi bp, 15 ; cntr
	ldi r1, -1 ; one less because loop contains add 1
	ldi r2, 15 ; one less because loop contains add 1; pg 16 = 0x8000

mappages:
	addi r2, r2, 1
	addi r1, r1, 1

	shl r3, r1, 8
	ldi r4, 3
	or r3, r3, r4
	wpte r2, r3
	addskpi.z bp, bp, -1
	br mappages

	; map physical p31 to end of address space p31/0xf800
	ldi r1, 31
	ld16 r2, 0xf03
	wpte r1, r2

	; id map first page or execution stop after paging is enabled
	ldi r3, 3
	wpte r0, r3

	; set ptb to address space 0
	wptb r0

	; turn on paging
	lcr r1
	ori r1, r1, 4
	wcr r1
; setup IVEC
	la16 r1, _alltraps
	wivec r1

; setup SP
	la16 r1, 0xff00
	mov sp, r1

; jump into c
	la16 r2, _kmain

; setup return address in case kmain returns (it shouldn't)
	addi r1, pc, 2
	br.r r2
	hlt









