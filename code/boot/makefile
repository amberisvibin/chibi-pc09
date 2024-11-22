# Makefile for CHIBI PC-09 Firmware

.PHONY: all clean
.IGNORE: clean
.DEFAULT_GOAL := all

# ------------------------------------------------------------------------------
# Project Defaults & Folders
# ------------------------------------------------------------------------------

TARGET  := boot.bin
SRCDIR  := src/
MAINSRC := $(SRCDIR)boot.s
SRCS    := $(wildcard $(SRCDIR)*.s)

# ------------------------------------------------------------------------------
# Toolchain Definitions
# ------------------------------------------------------------------------------

AS := asm6809

# ------------------------------------------------------------------------------
# Rules and Phony Targets
# ------------------------------------------------------------------------------

all: $(TARGET)

$(TARGET): $(SRCS)
	$(AS) -o $(TARGET) $(MAINSRC)

clean:
	rm -v $(TARGET)
