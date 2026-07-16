bits 64

global _start

section .text
_start:
    mov rax, 1              ; sys_write
    mov rdi, 1              ; stdout
    mov rsi, msg
    mov rdx, 13
    syscall

    mov rax, 60             ; sys_exit
    xor rdi, rdi
    syscall

section .data
msg: db "Hello, world", 10
