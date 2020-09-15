# chibi pc-80
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/amberisvibin/chibi-pc80) ![GitHub last commit](https://img.shields.io/github/last-commit/amberisvibin/chibi-pc80) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

### Description:
The pc-80 will be a Z80-based microcomputer with an advanced I/O system, boot scheme, and graphics hardware:

- On boot, the coldboot ROM will search a FAT SD card for a bootfile, load it into RAM, and execute it. The bootfile will be a BIN file that is copied directly to RAM. This bootfile can be copied and moved the same as any other file, allowing for easy backup and distribution of boot code. Due to a quirk in the way the Z80 (and CP/M) operates, once the coldboot ROM has finished its work, it will remove itself from the memory address space.

- It will come with 64k of RAM by default. These are split into 256 256 byte pages, and will be controlled by an MMU on upgraded machines. A memory protection expansion is also possible.

- It will use a full 64k I/O space, using the upper 8 bits as a Device ID and the lower eight bits as a device address. This creates 256 I/O devices with 256 addresses each. This way, the device ID can be left in the upper address register, while the device address register is updated. This is not the most efficient way to do things, but it makes programming very easy.

- The graphics system will be more advanced than most homebrew computer projects. It will have a custom TTL logic graphics card that will be able to display 320x200 in 256 colours over VGA. There will be 64k of double-buffered VRAM, interfaced via commands. The buffer will not copy unless a 'done' command is sent. This way, if the frame is not ready, the previous frame will be displayed, preventing tearing. These commands will include an auto-increment function, allowing entire bitmaps to be copied with ease. It will also have a text mode, utilizing bitmap copy from the character ROM.

### Todo:

- Design mainboard

- Design graphics board

- Program ROM

- Port software (customized [FUZIX](https://github.com/EtchedPixels/FUZIX))?
