divert(-1)
#

define(MULT16,
`
push bp
push $2
push $3
add r1, pc, 4
push r1
br verm
; result should be in $1
pop bp
')

divert
