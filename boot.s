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











