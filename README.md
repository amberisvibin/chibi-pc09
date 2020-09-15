# chibi pc-09
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/amberisvibin/chibi-pc80) ![GitHub last commit](https://img.shields.io/github/last-commit/amberisvibin/chibi-pc80)

### Description:
The pc-09 will be a Motorola 6809 based microcomputer with an advanced MMU, boot scheme, and graphics hardware:

- On boot, the coldboot ROM will search a FAT(32) SD card for a bootfile, load it into RAM, and execute it. The bootfile will be a BIN file that is copied directly to RAM. This bootfile can be copied and moved the same as any other file, allowing for easy backup and distribution of boot code. 

- It will come with 64k of RAM by default. These are split into 2k RAM pages by the 6829 MMU. The MMU allows for 4 different processes, each with their own address space. The kernel will occupy process 0. Multiple MMUs can be combined to create up to 32 process slots. The maximum amount of RAM will be 512k, as the upper 2 address lines are used for marking r/rw + x.

- [NOTE]The entire I/O system is not yet defined.

- The uppermost 2k RAM page will be unused, and dedicated to I/O. by default, this 'page' will only be accessible to the kernel process, and I/O occurs through system calls. [SUBJECT TO CHANGE]

- The 6844 DMA controller will be implemented on I/O. [SUBJECT TO CHANGE]

- The graphics system will be more advanced than most homebrew computer projects. It will have a custom TTL logic graphics card that will be able to display 320x200 in 256 colours over VGA. There will be 64k of double-buffered VRAM, interfaced via commands. The buffer will not copy unless a 'done' command is sent. This way, if the frame is not ready, the previous frame will be displayed, preventing tearing. These commands will include an auto-increment function, allowing entire bitmaps to be copied with ease. It will also have a text mode, utilizing bitmap copy from the character ROM.

### Todo:

- Design mainboard

- Design graphics board

- Program ROM

- Write kernel/OS
