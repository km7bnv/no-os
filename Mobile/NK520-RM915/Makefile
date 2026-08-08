CROSS = arm-none-eabi
CC = $(CROSS)-gcc
AS = $(CROSS)-as
$(LD) -T linker.ld kernel/startup.o kernel/kernel.o -o kernel/kernel.elf

CFLAGS = -march=armv7-a -marm -ffreestanding -nostdlib -nostartfiles -Ikernel

startup.o:
	$(AS) -march=armv7-a kernel/startup.s -o kernel/startup.o

kernel.o:
	$(CC) $(CFLAGS) -c kernel/kernel.c -o kernel/kernel.o

kernel.elf: startup.o kernel.o
	$(LD) kernel/startup.o kernel/kernel.o -o kernel/kernel.elf