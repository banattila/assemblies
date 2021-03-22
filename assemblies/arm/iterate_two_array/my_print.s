.syntax unified

.data
format: .asciz "A tömb elemeinek összege: %d\n"

.text
.global my_print

my_print:
	
	push {r4-r11, lr}
	
	ldr r0, =format
	bl printf
	
	pop {r4-r11, pc}
