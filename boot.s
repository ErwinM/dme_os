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
; page 6 -> 6

; this code is linked at 0x1000 so it works when paging is on
.code 0x1000

ldi r1, 0x3
ldi r2, 0x22
wpte r2, r1

ldi r2, 0x103
ldi r3, 0x23
wpte r3, r2

; identity map the first 2 pages or execution would stop
ldi r3, 32
wpte r3, r1
ldi r3, 33
ldi r1, 1
wpte r3, r2

; and the i/o memory mapped page
ld16 r2, 0x703
ldi r1, 0x3f
wpte r1, r2
ldi r3, 32
wptb r3
; turn on paging (not yet)
lcr r1
ori r1, r1, 4
scr r1

; setup IVEC
la16 r1, _trapret
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











