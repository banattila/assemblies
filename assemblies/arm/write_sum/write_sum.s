.syntax unified

.data
format: .asciz "%d és %d összege = %d\n"
num1: .int 23
num2: .int 22
.text

.global main

main:
	push {r4-r11, lr}
	
	ldr r0, =format
	ldr r1, =num1
	ldr r1, [r1]
	ldr r2, =num2
	ldr r2, [r2]
	add r3, r1, r2
	bl printf
	
	pop {r4-r11, pc}
