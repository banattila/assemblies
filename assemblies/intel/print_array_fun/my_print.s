.intel_syntax noprefix


.data
format: .asciz "szám = %d\n"
counter: .int 0
len: .int 0


.text
.global my_printf


my_printf:

	#prologue
	push ebp
	mov ebp, esp

	mov edx, [ebp + 8]
	mov len, edx
	xor ecx, ecx

_loop:
	cmp ecx, len
	jge _finish
	mov counter, ecx
	mov eax, [ebp + 12]
	
	mov esi, ecx
	push [eax + 4*esi]
	push offset format
	call printf
	add esp, 8
	mov ecx, counter
	inc ecx
	jmp _loop


_finish:

	#epilogue
	mov esp, ebp
	pop ebp
	mov eax, 0
	ret
	

	
