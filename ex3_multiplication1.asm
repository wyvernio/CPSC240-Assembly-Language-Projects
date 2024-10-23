; ex3_multiplication1.asm
; unsigned char num1 = 25, num2 = 35;
; unsigned short mult = 0;
; mult = short (num1 * num2);

section .data
SYS_exit	equ	60
EXIT_SUCCESS	equ	0
num1		db	25			;num1 = 25 = 19h
num2		db	35			;num2 = 35 = 23h
mult		dw	0			;mult = 0000h

section .text
        global _start
_start:
        mov     al, byte[num1]			;al = num1 = 19h
        mul     byte[num2]			;ax = al * num2 = 036Bh
        mov     word[mult], ax			;mult = ax = 036Bh
_stop:
        mov     rax, SYS_exit			;terminate excuting process
        mov     rdi, EXIT_SUCCESS		;exit status
        syscall					;calling system services
