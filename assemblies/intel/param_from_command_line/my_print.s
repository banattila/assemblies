.intel_syntax noprefix

.data
format: .asciz "A számok összege: %d\n"

.text
.global my_print

my_print:

	push ebp
	mov ebp, esp
	mov eax, [ebp + 8]
	push eax
	push offset format
	call printf
	
	add esp, 8
	xor eax, eax
	mov esp, ebp
	pop ebp
	ret
