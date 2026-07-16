.global _start

.section .text
_start:
    mov $1, %rax            # sys_write
    mov $1, %rdi            # stdout
    lea msg(%rip), %rsi
    mov $13, %rdx
    syscall

    mov $60, %rax           # sys_exit
    xor %rdi, %rdi
    syscall

.section .data
msg:
    .ascii "Hello, world\n"
