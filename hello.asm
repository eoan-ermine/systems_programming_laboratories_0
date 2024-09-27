section .data ; данные должны лежать в секции для данных
    hello: db 'Hello world!',10 ; db используется для объявления инициализированных данных
    helloLen: equ $-hello ; equ используется для объявления констант

global main
section .text ; код должен лежать в секции .text

main:
    mov eax, 4 ; eax - syscall: 4 - write
    mov ebx, 1 ; ebx - файловый дескриптор: 1 - stdout
    mov ecx, hello ; ecx - буффер
    mov edx, helloLen ; edx - длина данных в переданном буффере
    int 80h ; вызываем прерывание - обработчик системных вызовов
    ret ; выход из программы
