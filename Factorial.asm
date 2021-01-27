BITS 32

extern printf
extern scanf

section .data
	fmt:db "%d",0
	factorial: db "factorial is %d",10,0

section .text
	global main

	main:
	push ebp
	mov ebp, esp
	sub esp, 0x10


	lea eax, [ebp-0x4]
	push eax
	push fmt
	call scanf

	mov ebx, dword [ebp-0x4]
	mov eax, 1
	mov ecx, 1
	call L1


	L1:
	mul ecx
	cmp ecx, ebx
	jz L2
	add ecx, 1
	jmp L2

	L2:
	push eax
	push factorial
	call printf
	leave
	ret
