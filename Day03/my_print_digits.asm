;;
;; EPITECH PROJECT, 2026
;; my_print_digits
;; File description:
;; digits
;;

global _start

section .text

_start:
    call my_print_digits
    mov rax, 60
    xor rdi, rdi
    syscall

my_print_digits:
    push rbp
    mov rbp, rsp

    mov bl, '0'

loop_digit:
    cmp bl, '9'
    jg end_diloop

    mov dil, bl
    call my_putchar

    inc bl
    jmp loop_digit

end_diloop:
    mov rax, 0
    leave
    ret

my_putchar:

    push rbp
    mov rbp, rsp

    sub rsp, 8 

    mov [rsp], dil

    mov rax, 1
    mov rdi, 1
    lea rsi, [rsp]
    mov rdx, 1
    syscall

    leave
    ret
