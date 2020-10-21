# chibi pc-09
![GitHub last commit](https://img.shields.io/github/last-commit/amberisvibin/chibi-pc80) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

### Description:
The pc-09 will be a Motorola 6809 based microcomputer with an advanced MMU, boot scheme, and graphics hardware:

- On boot, the coldboot ROM will search a FAT(32) SD card for a bootfile, load it into RAM, and execute it. The bootfile will be a BIN file that is copied directly to RAM. This bootfile can be copied and moved the same as any other file, allowing for easy backup and distribution of boot code. 

- It will come with 64k of RAM by default. These are split into 2k RAM pages by the 6829 MMU. The MMU has a 10-bit output, but the maximum amount of RAM will be 512k, as the upper 2 address lines are used for marking r/rw + x.

- The MMU allows for 4 different processes, each with their own address space. Multiple MMUs can be combined to create up to 32 process slots. The kernel will occupy process 0, and will manage all other processes. Page faults have to be managed by external circuitry. The 6829 datasheet contains details on how to do this.

- [NOTE]The entire I/O system is not yet defined.

- The uppermost 2k RAM page will be unused, and dedicated to I/O. By default, this 'page' will only be accessible to the kernel process, and I/O occurs through system calls. [SUBJECT TO CHANGE]

- The 6844 DMA controller will be implemented on I/O. [SUBJECT TO CHANGE]

- The graphics system will be more advanced than most homebrew computer projects. It will have a custom TTL logic graphics card that will be able to display 320x200 in 256 colours over VGA. There will be 64k of double-buffered VRAM, interfaced via commands. The buffer will not copy unless a 'done' command is sent. This way, if the frame is not ready, the previous frame will be displayed, preventing tearing. These commands will include an auto-increment function, allowing entire bitmaps to be copied with ease. It will also have a text mode, utilizing bitmap copy from the character ROM.

- The kernel will implement drivers, using position-independent, re-entrant code. In theory, these drivers should be interchangeable with any 6809 system.

## Todo:

- Design mainboard

- Design graphics board

- Program ROM

- Write kernel/OS [NOTE: [NitrOS-9](https://sourceforge.net/projects/nitros9/) fork?]

## Code of Conduct
This project uses the [Contributor Covenant](CODE_OF_CONDUCT.md). While a code of conduct is not *strictly* neccesary at this stage, any form of discrimination will **not** be tolerated. Thank you for understanding.
