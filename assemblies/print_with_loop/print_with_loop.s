.intel_syntax noprefix


.data
format: .asciz "szam = %d\n"
valtozo: .asciz "ciklusvaltozo = %d\n"
szamok: .int 4, 8, 9, 12, 121
len: .int 5

.text
.global main

main:
	push ebp
	mov ebp, esp
	mov ecx, 0
	
	


_loop:
	cmp ecx, len
	jge _kesz
	mov ebx, ecx
	mov edx, offset szamok
	
	mov eax, [edx + 4*ecx]
	push eax
	push offset format
	call printf
	add esp, 2*4
	mov ecx, ebx
	inc ecx

	jmp _loop

_kesz:	

	mov esp, ebp
	pop ebp
	mov eax, 0
	ret
	
