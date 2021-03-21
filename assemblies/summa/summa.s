.intel_syntax noprefix

.data

.text
.global summa

summa:

	push ebp
	mov ebp, esp
	
	xor ecx, ecx
	xor eax, eax
	mov edx, [ebp + 8]
	mov ebx, [ebp + 12]

	
_loop:
	cmp ecx, edx
	jge _finish
	add eax, [ebx + ecx*4]
	inc ecx
	jmp _loop	
	
_finish:
	
	mov esp, ebp
	pop ebp
	ret
