# bedroom Z80

### Description:

The bedroom Z80 is a Z80-based microcomputer with an advanced I/O system, boot scheme, and graphics hardware:

- On boot, the coldboot ROM will search a FAT SD card for a bootfile, load it into RAM, and execute it. The bootfile is a BIN file that contains code neccesary to boot. This bootfile can be copied and moved the same as any other file, allowing for easy backup and distribution of boot code. Due to a quirk in the way the Z80 (and CP/M) operates, once the ROM has finished its work, it will remove itself from the memory address space.

- It will be able to recognise a signifigant number of I/O devices. One recognised, the I/O device will be assigned an area of I/O space, and a driver will be loaded to communicate with the device. There are 2 64k I/O areas, one is used for general I/O and the other is used to access the 64k of VRAM.

- The graphics system will be more advanced than most homebrew computer projects. It will have a custom TTL logic graphics card that will be able to display 320x200 in 256 colours, or 640x400 in 4 shades of grey over VGA. Possible other modes include 320x400 or 640x200 in 16 colours, from the 256 colour palette. These graphics modes all fit in 64k of VRAM.

### Todo:

- Design mainboard

- Design graphics board

- Program ROM

- Port software (customized [FUZIX](https://github.com/EtchedPixels/FUZIX))?
