.syntax unified

.data
format: .asciz "Hello world!\n"
.text

.global main

main:
	
	push {r4-r11, lr}
	ldr r0 , =format
	bl printf
	pop {r4-r11, pc}	
