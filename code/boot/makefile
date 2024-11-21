# Makefile for Chibi PC-09 Firmware

.PHONY: all clean
.IGNORE: clean
.DEFAULT_GOAL := all

# ------------------------------------------------------------------------------
# Project Defaults & Folders
# ------------------------------------------------------------------------------

TARGET   := boot.bin
SRCDIR   := src/
BUILDDIR := build/
SRCS     := $(wildcard $(SRCDIR)*.s)
OBJS     := $(patsubst $(SRCDIR)%.s,$(BUILDDIR)%.o,$(SRCS))

# ------------------------------------------------------------------------------
# Toolchain Definitions
# ------------------------------------------------------------------------------

AS := lwasm
LD := lwlink
AR := lwar

# ------------------------------------------------------------------------------
# Rules and Phony Targets
# ------------------------------------------------------------------------------

all: $(TARGET)

$(TARGET): $(OBJS)
	$(LD) -s boot.ld -o $@ $<

$(OBJS): $(BUILDDIR)%.o : $(SRCDIR)%.s
	-@mkdir -p $(BUILDDIR)
	$(AS) --obj -o $@ $<

clean:
	rm -rvf $(BUILDDIR) $(TARGET)
