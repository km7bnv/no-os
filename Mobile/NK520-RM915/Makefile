CROSS = arm-none-eabi
CC = $(CROSS)-gcc
LD = $(CROSS)-ld

CFLAGS = -march=armv7-a -marm -ffreestanding -nostdlib -nostartfiles

kernel.o:
	$(CC) $(CFLAGS) -c kernel/kernel.c -o kernel/kernel.o

kernel.elf: kernel.o
	$(LD) kernel/kernel.o -o kernel/kernel.elf