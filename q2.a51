org 0
setb psw.4
mov r2,#10
mov r4, #0 ;lsb
mov r5, #0 ;msb
mov r6, #0 ;carry
mov r7, #0AAH ;data

outerLoop:
mov r3,#100
innerLoop:
mov a, r4
add a,r7
mov r4,a

jnc here
mov a, r5
add a,#1h
mov r5,a

jnc here
mov a, r6
add a,#1h
mov r6,a


here: djnz r3,innerLoop
djnz r2,outerLoop

end