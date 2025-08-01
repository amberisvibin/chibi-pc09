# chibi pc-09
![GitHub last commit](https://img.shields.io/github/last-commit/amberisvibin/chibi-pc09)

## Description

The PC-09 will be a 6309 based microcomputer with an MMU using 74HC670 register files and dual 16550 UARTs. The plan is to eventually add uPD7220 graphics and PS/2 mouse and keyboard.

The two 74HC670s will take the top 4 bits of the address bus and expand them to 8 bits, turning the 16 bit cpu address space into a 20 bit address space capable of addressing 1MB of memory. Memory pages are 4KB. Being a register file, any page can be mapped to any slot, allowing complex memory management schemes.

The 16550 UART is capable of interrupt driven operation with FIFOs, allowing for characters to be processed in batches rather than individually, minimizing task switch delays. They also support hardware flow control, and some versions can automatically assert RTS when the FIFO is nearing full.

The uPD7220 graphics are very powerful, allowing 16 colors at 640x480, but it is a complex chip to get working. It will be left for a later date.

The solution for PS/2 keyboard and mouse have not yet been decided.

## Progress

I had started wiring together a board for prototyping, but it was destroyed in hurricane Helene. I am now recreating it in schematic form in order to order a PCB.

Prototype 1 is currently in progress. It will be a much simpler system. It will have no MMU, just the CPU, some RAM, some ROM, and the UART.

The PCB and parts for Prototype #1 have been ordered, and assembly will begin soon. Initial test code is now available in the code/ directory.

Assembly is in progress.

## License

This project is licensed under the MIT license. This applies to both the hardware (schematics, bill of materials, pcb layouts) and documentation. This does *not* apply to the datasheets/ directory, the books/ directory or code/assist09/. Those files belong to their respective copyright holders.
