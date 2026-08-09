// PLACEHOLDER


.global _start
.extern kernel_main
.extern __bss_start
.extern __bss_end


.section .text


_start:
    cpsid if
    ldr sp, =_stack_top

    ldr r0, =__bss_start
    ldr r1, =__bss_end
    mov r2, #0

bss_clear:
    cmp r0, r1
    strlo r2, [r0], #4
    blo bss_clear

    bl kernel_main


hang:
    b hang


.section .bss
.align 8

_stack:
    .space 4096

_stack_top: