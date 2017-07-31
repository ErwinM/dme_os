divert(-1)
#

define(MULT16,
`
push bp
push $2
push $3
addi bp, pc, 2
br _mult
; result should be in $1
pop bp
')

define(DIV16,
`
push $2
push $3
addi r1, pc, 2
br _div
; result will be in $1
')

define(MOD16,
`
push $2
push $3
addi r1, pc, 2
br _mod
; result will be in $1
')

divert


