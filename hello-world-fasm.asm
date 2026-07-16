format ELF64 executable 3

segment readable executable

entry _start

_start:
    mov rax, 1              ; sys_write
    mov rdi, 1              ; stdout
    mov rsi, msg
    mov rdx, 13
    syscall

    mov rax, 60             ; sys_exit
    xor rdi, rdi
    syscall

segment readable writable

msg db "Hello, world", 10
