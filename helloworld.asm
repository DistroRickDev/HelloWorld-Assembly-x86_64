section .data
    text db "Hello World!", 10 ;db stands for define bytes, "hello world" is the defined data and 10 is a new line character, text is the adress name ;
    name db "I'm Rick!", 10 ;10 bytes"

section .text
       	global _start

_start:
   	mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 13
    syscall
	   
	mov rax, 1 ;WRITE;
   	mov rdi, 1 ;STANDARD OUTPUT;
   	mov rsi, name ;which adress;
   	mov rdx, 10 ;size 10 bytes;
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
