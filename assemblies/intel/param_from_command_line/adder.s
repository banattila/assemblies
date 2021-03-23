.intel_syntax noprefix

.data
counter: .int 0
result: .int 0

.text
.global adder

adder:
	
	push ebp
	mov ebp, esp
	mov esi, 4
	mov ebx, [ebp + 8]
	mov ecx, [ebp + 12]
	mov counter, ecx
	mov eax, [ebx + 4]
	
_loop:	
	mov ecx, counter
	cmp ecx, 0
	je _done
	
	sub ecx, 1
	mov counter, ecx
	mov eax, [ebx + esi]
	add esi, 4
	
	push eax
	call atoi
	add esp, 4
	
	mov edx, result
	add eax, edx
	mov result, eax
	jmp _loop
	
	
_done:
	mov eax, result
	mov esp, ebp
	pop ebp
	ret
