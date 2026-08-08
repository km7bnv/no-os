@ PLACEHOLDER

.global _start
.extern kernel_main

_start:
    bl kernel_main

hang:
    b hang