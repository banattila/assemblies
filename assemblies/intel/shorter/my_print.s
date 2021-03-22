.intel_syntax noprefix

.data
format: .asciz "szám = %d\n"
m_len: .int 0
counter: .int 0
.text
.global my_print

my_print:
	
	push ebp
	mov ebp, esp
	xor ecx, ecx
	mov edx, [ebp + 8]
	mov m_len, edx

_write:
	cmp ecx, edx
	jge _finish
	mov eax, [ebp + 12]
	mov counter, ecx
	push [eax + 4*ecx]
	push offset format
	call printf
	add esp, 8
	mov ecx, counter
	inc ecx
	mov edx, m_len
	jmp _write
	
_finish:
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret
