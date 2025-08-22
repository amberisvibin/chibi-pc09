# Boot Firmware for CHIBI PC-09

TODO: Description of what the firmware does for the PC-09.

## Building the Firmware

You will need GNU `make`, and [`asm6809`](https://www.6809.org.uk/asm6809) to
build the firmware. Obtaining a working copy of `asm6809` could be difficult if
you aren't on Debian, Ubuntu, or Windows as instructions for building it are not
given on the `asm6809` website. Functional instructions for building from Git or
tarball are given here:

```sh
git clone https://www.6809.org.uk/git/asm6809.git
cd asm6809
./configure
make
sudo make install
```

From there all you should have to do to generate a `boot.bin` is:

```sh
git clone https://github.com/amberisvibin/chibi-pc09.git
cd chibi-pc09/code/boot
make
```

## Firmware Licensing

This firmware like the rest of the CHIBI PC-09 is licensed under the MIT
license.
