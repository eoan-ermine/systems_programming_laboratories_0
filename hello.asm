section .data
    hello: db 'Hello world!',10
    helloLen: equ $-hello

global main
section .text

main:
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, helloLen
    int 80h
    ret
