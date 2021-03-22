.syntax unified

.data
format: .asciz "A tömb elemeinek összege = %d\n"
array: .int 1, 2, 3, 4, 5, 10
len: .int 6
.text

.global main

main:
	
	push {r4-r11, lr}
	ldr r0, =format
	ldr r2, =array			
	ldr r3, =len
	ldr r3, [r3]			
	mov r1, #0					@result
	mov r4, #0					@counter
	mov r5, #0					@offset			
	
_loop:	
	cmp r3, r4
	ble _finish
	ldr r6, [r2, r5]
	add r1, r4, r6
	add r4, r4, #1
	add r5, r5, #4
	b _loop	
	
_finish:

	bl printf
	pop {r4-r11, pc}
