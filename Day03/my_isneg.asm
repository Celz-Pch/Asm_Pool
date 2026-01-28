;;
;; EPITECH PROJECT, 2026
;; my_isneg
;; File description:
;; asm
;;

global _start

section .text

_start:
    mov dil, -5
    call my_isneg
    mov rax, 60
    xor rdi, rdi
    syscall

my_isneg:
    cmp dil, 0
    jl is_negative

is_positive:
    mov dil, 'P'
    call my_putchar
    jmp end_isneg

is_negative:
    mov dil, 'N'
    call my_putchar

end_isneg:
    mov rax, 0
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