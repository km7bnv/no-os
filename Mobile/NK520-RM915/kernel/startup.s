// PLACEHOLDER


.global _start
.extern kernel_main


.section .text


_start:
    ldr sp, =_stack_top
    bl kernel_main


hang:
    b hang


.section .bss
.align 8

_stack:
    .space 4096

_stack_top: