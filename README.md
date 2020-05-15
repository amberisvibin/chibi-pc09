# bedroom Z80

### Description:

The bedroom Z80 is a Z80-based microcomputer with an advanced I/O system, boot scheme, and graphics hardware:

- On boot, the coldboot ROM will search a FAT SD card for a bootfile, load it into RAM, and execute it. Due to a quirk in the way the Z80 (and CP/M) operates, once the ROM has finished its work, it will remove itself from the memory address space.

- It will be able to recognise a signifigant number of I/O devices. One recognised, the I/O device will be assigned an area of I/O space, and a driver will be loaded to communicate with the device. 

- The graphics system will be more advanced than most homebrew computer projects. It will have a custom TTL logic graphics card that will be able to display 320x200 in 16 colours over VGA.

### Todo:

- Design mainboard

- Design graphics board

- Program ROM

- Port software (customized [FUZIX](https://github.com/EtchedPixels/FUZIX))?
