org 0
mov r0, #40h ;start position
mov r2, #16 ; r2 is counter
;mov r3, #0; answer lsb
mov r4, #0; answer msb


;Taking input
again: mov @r0, #71h
inc r0
djnz r2,again


;Adding
mov a,#0
mov r2,#16 ; resetting counter
mov r0, #40h ; resettintg start 
loop:  add a,@r0	
	   jnc next
	   inc r4
next:  inc r0
djnz r2,loop
mov 60h,a
mov 61h,r4

end
