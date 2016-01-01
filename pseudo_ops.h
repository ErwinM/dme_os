divert(-1)
#

define(MULT16,
`
push $2 ;(should always be r2)
push $3 ;(should always be r3)
ldi r4, 6
add r1, pc, r4
la16 r4, _mult
br.r r4
; restore registers & clean stack
pop $3
pop $2
; result will be in $1
')

define(DIV16,
`
push $2
push $3
ldi r2, 6
add r1, pc, r2
la16 r2, _div
br.r r2
; restore registers & clean stack
pop $3
pop $2
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
; restore registers & clean stack
pop $3
pop $2
; result will be in $1
')

divert


