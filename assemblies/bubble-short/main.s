.intel_syntax noprefix

.data

array: .int 342, 23, 1233, 43, 2, 6, 23213, 1, 323, 44, 1
len: .int 11

.text
.global main

main:
	
	push ebp
	mov ebp, esp
	
	push offset array
	push len
	call rendez
	pop ebx
	add esp, 4
	
	
	push eax
	push ebx
	call my_print
	add esp, 4
	
	
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret
