AS=nasm
CC=gcc

all:
	$(AS) -f elf64 hello.asm -o hello.o
	$(CC) hello.o -m64 -no-pie -o hello
