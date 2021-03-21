.intel_syntax noprefix

.data
array: .int 1, 2, 3, 4, 10, 100
len: .int 6

.text
.global main
main:
	
	push ebp
	mov ebp, esp
	
	#summa
	push offset array
	push len
	call summa
	add esp, 8
	
	
	#writing
	push eax
	call write
	add esp, 4
	
	mov esp, ebp
	pop ebp
	xor eax, eax
	ret
