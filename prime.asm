BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d",0
	d: db "%d",10,0
	is_prime: db " %d is prime ",10,0
	not_a_prime: db " %d is not prime",10,0
	not_both: db "neither nor prime",10,0

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

	mov eax, dword [ebp-0x4]
	sub eax, 1
	mov ebx, eax
	push ebx
	push d
	call printf

	mov eax, dword [ebp-0x4]
	mov ecx, 2
	cmp eax, 0
	jl l4
	cmp eax, 1
	jz l1
	cmp eax, 2
	jz l2
	cmp eax, 2
	jg l3

	l3:
	mov edx, 0
	mov eax, dword [ebp-0x4]
	div ecx
	cmp edx, 0
	jz not
	cmp ecx, ebx
	jz l2
	add ecx, 1
	jmp l3

	l2:
	push dword [ebp-0x4]
	push is_prime
	call printf
	call end
	
	l1:
	push not_both
	call printf
 	call end

	l4:
	push ecx
	push d
	call printf

	mov eax, dword [ebp-0x4]
	push eax
	push not_a_prime
	call printf
	call end

	end:
	leave
	ret
