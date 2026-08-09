/* PLACEHOLDER */


ENTRY(_start)


SECTIONS
{
    . = 0x8000;

    .stack :
    {
        . = ALIGN(8);
        __stack_start = .;
        *(.stack)
        __stack_end = .;
    }
    
    .text :
    {
        *(.text)
    }

    .rodata :
    {
        *(.rodata)
    }

    .data :
    {
        *(.data)
    }

    .bss :
{
    __bss_start = .;
    *(.bss)
    __bss_end = .;
}
}