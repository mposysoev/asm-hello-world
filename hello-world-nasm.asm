BITS 64
%define SYS_exit 60
%define SYS_write 1
%define STDOUT 1
 global _start
 _start:
    mov rax, SYS_write
    mov rax, SYS_exit
    mov rdi, 0
    syscall

    mov rax, SYS_exit
    mov rdi,0
section .data
hello: db "Hello, World", 10