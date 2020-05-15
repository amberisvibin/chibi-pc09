/*
 * Write the CP/M 3 systemfiles to system tracks of drive A
 *
 * Copyright (C) 1988-2006 by Udo Munk
 *
 * History:
 * 29-APR-88 Development on TARGON/35 with AT&T Unix System V.3
 * 11-MAR-93 comments in english and ported to COHERENT 4.0
 * 02-OCT-06 modified to compile on modern POSIX OS's
 */

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <memory.h>

/*
 *	This program writes the CP/M 3 OS from the following files
 *	onto the system tracks of the boot disk (drivea.cpm):
 *
 *	boot loader	boot.bin
 *	cpmldr		cpmldr.bin
 */
int main(void)
{
	unsigned char sector[128];
	register int i;
	int fd, drivea, readed;

	/* open drive A for writing */
	if ((drivea = open("../disks/drivea.cpm", O_WRONLY)) == -1) {
		perror("file ../disks/drivea.cpm");
		exit(1);
	}
	/* open boot loader (boot.bin) for reading */
	if ((fd = open("boot.bin", O_RDONLY)) == -1) {
		perror("file boot.bin");
		exit(1);
	}
	/* read boot loader */
	memset((char *) sector, 0, 128);
	read(fd, (char *) sector, 128);
	close(fd);
	/* and write it to disk in drive A */
	write(drivea, (char *) sector, 128);
	/* open CP/M 3 cpmldr file (cpmldr.bin) for reading */
	if ((fd = open("cpmldr.bin", O_RDONLY)) == -1) {
		perror("file cpmldr.bin");
		exit(1);
	}
	/* read from cpmldr.bin and write to disk in drive A */
	while ((readed = read(fd, (char *) sector, 128)) == 128)
		write(drivea, (char *) sector, 128);
	write(drivea, (char *) sector, 128);
	close(fd);
	close(drivea);
	return(0);
}
