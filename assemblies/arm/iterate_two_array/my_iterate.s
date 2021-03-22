.syntax unified

.data

.text
.global my_iterate

my_iterate:

	push {r4-r11, lr}
	
	mov r1, #0		@return
	mov r3, #0		@counter
	mov r4, #0		@offset
	
_loop:
	cmp r2, r3
	ble _finish
	ldr r5, [r0, r4]
	add r1, r1, r5
	add r4, r4, #4
	add r3, r3, #1
	bl _loop
	
	
_finish:
	
	pop {r4-r11, pc}
