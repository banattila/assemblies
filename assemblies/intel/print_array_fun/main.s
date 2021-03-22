.intel_syntax noprefix

.data
array: .int 2, 3, 4, 4, 5, 212
len: .int 6
.text
.global main

main:

	push ebp
	mov ebp, esp
	
	push offset array
	push len
	call my_printf
	
	add esp, 8
	
	mov esp, ebp
	pop ebp
	mov eax, 0
	ret
	
