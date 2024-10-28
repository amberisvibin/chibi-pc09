# chibi pc-09
![GitHub last commit](https://img.shields.io/github/last-commit/amberisvibin/chibi-pc80)

## Description

The PC-09 will be a 6309 based microcomputer with a 74LS612 MMU, uPD72020 graphics, PS/2 keyboard and mouse input, and a capable UART. 

The MMU will allow up to 2 megabytes of I/O to be paged into the address space. Pages are 4k. System storage will be paged into the address space as well, as it will be either EEPROM or flash. 

The uPD72020 is a very advanced graphics chip for it's time, capable of accelerated drawing of lines, shapes, fills, and characters. It can be coerced into outputting a VGA signal at 640x480 and *maybe* 800x600. 

Keyboard and mouse will be handled by the VIA VT82C42. It is an Intel 8242 compatible controller capable of both PS/2 keyboard and mouse. It's interface is relatively simple, which makes connection easy. It relies on interrupts, so an interrupt system will be required.

To avoid the infamous 65C22 bug, the system will use the 16550 UART from the PC ecosystem. It is *relatively* easy to interface this to a 6800 style bus. It has more features than a 65C22 as well. As configured, it will be stable up to 38,400 baud. 

## Progress

I had started wiring together a board for prototyping, but it was destroyed in hurricane Helene. I am now recreating it in schematic form in order to order a PCB.

Prototype 1 is currently in progress. It will be a much simpler system. It will have no MMU, just the CPU, some RAM, some ROM, and the UART.

## License

This project is licensed under the MIT license. This applies to both the hardware (schematics, bill of materials, pcb layouts) and documentation. This does *not* apply to the datasheets/ directory. Files in that directory belong to their respective copyright holders.
