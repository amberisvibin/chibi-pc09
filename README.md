# bedroom Z80

### Description:

The bedroom Z80 will be a Z80-based microcomputer with an advanced I/O system, boot scheme, and graphics hardware:

- On boot, the coldboot ROM will search a FAT SD card for a bootfile, load it into RAM, and execute it. The bootfile will be a BIN file that is copied directly to RAM. This bootfile can be copied and moved the same as any other file, allowing for easy backup and distribution of boot code. Due to a quirk in the way the Z80 (and CP/M) operates, once the coldboot ROM has finished its work, it will remove itself from the memory address space.

- It will come with 64k of RAM by default. There will be a basic MMU, using 16 2k pages in the upper 32k of RAM. The lower 32k will be static. The MMU will not be very useful unless a RAM expansion is installed. Up to 256 2k pages will be supported, creating a maximum RAM size of 512k.

- It will use a full 64k I/O space, using the upper 8 bits as a Device ID and the lower eight bits as a device address. This creates 256 I/O devices with 256 addresses each. This way, the device ID can be left in the upper address register, while the device address register is updated. 

- The graphics system will be more advanced than most homebrew computer projects. It will have a custom TTL logic graphics card that will be able to display 320x200 in 256 colours over VGA. If possible, there will be a high res mode, at 640x400 in 4 shades of grey. There will be 64k of double-buffered VRAM, interfaced through a DMA chip on the card.

### Todo:

- Design mainboard

- Design graphics board

- Program ROM

- Port software (customized [FUZIX](https://github.com/EtchedPixels/FUZIX))?
