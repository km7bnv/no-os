CROSS = arm-none-eabi
CC = $(CROSS)-gcc
LD = $(CROSS)-ld

CFLAGS = -mcpu=cortex-a7 -marm -ffreestanding -nostdlib -nostartfiles

kernel.o:
	$(CC) $(CFLAGS) -c kernel/kernel.c -o kernel/kernel.o

kernel.elf: kernel.o
	$(LD) kernel/kernel.o -o kernel/kernel.elf