.syntax unified

.data
my_array: .int 3, 4, 5
len1: .int 3
my_array2: .int 6, 2, 1 , 1
len2: .int 4
.text

.global main

main:
	
	push {r4-r11, lr}
	
	ldr r0, =my_array
	ldr r2, =len1
	ldr r2, [r2]
	bl my_iterate
	bl my_print
	
	
	ldr r0, =my_array2
	ldr r2, =len2
	ldr r2, [r2]
	bl my_iterate
	bl my_print
	
	pop {r4-r11, pc}
