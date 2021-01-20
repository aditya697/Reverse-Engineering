ASMD.asm

```
BITS 32

extern printf
extern scanf

section .data
    fmt: db "%d", 0
    addition: db "sum is %d",10,0
    subtract: db "Difference is %d",10,0
    multiply: db "Product is %d",10,0
    division: db "Dividend is %d",10,0

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

    lea edx, [ebp-0x8]
    push edx
    push fmt
    call scanf
   
    mov ebx, dword [ebp-0x4]
    mov eax, dword [ebp-0x8]
    add eax, ebx
    push eax
    push addition
    call printf
    mov ebx, dword [ebp-0x4]
    mov eax, dword [ebp-0x8]
    sub ebx, eax
    push ebx               
    push subtract 
    call printf
    mov ebx, dword [ebp-0x4]
    mov eax, dword [ebp-0x8]
    mul ebx
    push eax
    push multiply
    call printf
    mov edx, 0
    mov ebx, dword [ebp-0x8]
    mov eax, dword [ebp-0x4]
    div ebx
    push eax
    push division
    call printf

    leave
    ret
```
