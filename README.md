# chibi pc-09
![GitHub last commit](https://img.shields.io/github/last-commit/amberisvibin/chibi-pc80)

## Description

The PC-09 will be a 6309 based microcomputer with a 74LS612 MMU, uPD72020 graphics and keyboard input. 

The MMU will allow up to 2 megabytes of I/O to be paged into the address space. Pages are 4k. System storage will be paged into the address space as well, as it will be either EEPROM or flash. 

The uPD72020 is a very advanced graphics chip for it's time, capable of accelerated drawing of lines, shapes, fills, and characters. It can be coerced into outputting a VGA signal at 640x480 and *maybe* 800x600. 

Prototype 1 is currently in progress. It will be a much simpler system. It will have no MMU, just the CPU, some RAM, some ROM, and a serial port.

## Progress

I had started wiring together a board for prototyping, but it was destroyed in hurricane Helene. I am now recreating it in schematic form in order to order a PCB.
