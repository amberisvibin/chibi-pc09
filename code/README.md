# Code

## assist09/

assist09.asm is the original motorola version, and relies on the as9 assembler found [here](http://home.hccnet.nl/a.w.m.van.der.horst/m6809.html).

assemble.sh will assemble assist09.asm to an s19 file and use gnu binutils objcopy to turn that into a bin file.

## boot/

the boot code for prototype 1, uses the lwtools assembler.

assemble.sh will assemble boot.s to an s19 file and use gnu binutils objcopy to turn that into a bin file.
