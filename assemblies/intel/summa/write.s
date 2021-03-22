.intel_syntax noprefix

.data
format: .asciz "A számok összege: %d\n"

.text
.global write

write:
	
	push ebp
	mov ebp, esp
	
	push eax
	push offset format
	call printf
	
	add esp, 8
	
	
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret
