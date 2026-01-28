;;
;; EPITECH PROJECT, 2026
;; my_print_revalpha
;; File description:
;; revalpha
;;

global _start

section .text

_start:
    call my_print_revalpha
    mov rax, 60
    xor rdi, rdi
    syscall

my_print_revalpha:
    push rbp
    mov rbp, rsp

    mov bl, 'z'

loop_revalpha:
    cmp bl, 'a'
    jl end_revloop

    mov dil, bl
    call my_putchar_rev

    dec bl
    jmp loop_revalpha

end_revloop:
    mov rax, 0
    leave
    ret

my_putchar_rev:

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