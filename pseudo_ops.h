divert(-1)
#

define(MULT16,
`
push $2
push $3
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in $1
')

define(DIV16,
`
push $2
push $3
ldi r2, 6
add r1, pc, r2
la16 r2, _div
br.r r2
; clean stack
addi sp, sp, 4
; result will be in $1
')

define(MOD16,
`
push $2
push $3
ldi r2, 6
add r1, pc, r2
la16 r2, _mod
br.r r2
; clean stack
addi sp, sp, 4
; result will be in $1
')

divert


