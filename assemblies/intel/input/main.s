.intel_syntax noprefix

.data
beker: .asciz "Addj meg egy számot: \n"
format: .asciz "%s"
output: .asciz "A megadott szám: %d\n"
num: .int 0

.text

.global main

main:

	push ebp
	mov ebp, esp
	
	push offset beker
	call printf
	add esp, 4
	push offset num
	push offset format
	call scanf
	add esp, 8

	push offset num
	call atoi
	add esp, 4
	push eax
	push offset output
	call printf
	add esp, 8
	
	
	
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret
