.intel_syntax noprefix

.data
s_len: .int 0

.text
.global rendez

rendez:
	
	push ebp
	mov ebp, esp
	
	xor ebx, ebx
	xor esi, esi
	
	mov edx, [ebp + 8]
	mov s_len, edx
	mov eax, [ebp + 12]
	
_loop:
	cmp esi, s_len
	jge _finish
	
	mov edx, [eax + 4*esi]
	inc esi
	mov ecx, esi
	
	
	jmp _nested_loop
	
	
_nested_loop:
	cmp ecx, s_len
	jge _loop
	
	mov ebx, [eax + 4*ecx]
	inc ecx
	
	cmp ebx, edx
	jge _nested_loop

	xchg edx, ebx
	
	mov [eax + 4*esi - 4], edx
	mov [eax + 4*ecx - 4], ebx
	
	jmp _nested_loop
	
_finish:
	mov esp, ebp
	pop ebp
	ret
