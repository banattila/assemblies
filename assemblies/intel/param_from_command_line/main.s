.intel_syntax noprefix

.text
.global main

main:

	push ebp
	mov ebp, esp
	mov ecx, [ebp + 8]
	sub ecx, 1
	mov ebx, [ebp + 12]
	
	push ecx
	push ebx
	call adder
	
	add esp, 8
	
	push eax
	call my_print
	
	add esp, 4
	
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret
	

