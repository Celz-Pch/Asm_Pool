;;
;; EPITECH PROJECT, 2025
;; my_print_alpha
;; File description:
;; alpha
;;

global _start

section .text

_start:
    call my_print_alpha
    mov rax, 60
    xor rdi, rdi
    syscall

my_print_alpha:
    push rbp
    mov rbp, rsp

    mov bl, 'a'

loop_alpha:
    cmp bl, 'z'
    jg end_loop

    mov dil, bl
    call my_putchar

    inc bl
    jmp loop_alpha

end_loop:
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