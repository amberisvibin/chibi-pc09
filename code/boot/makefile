# Makefile for CHIBI PC-09 Firmware

.PHONY: all clean
.IGNORE: clean
.DEFAULT_GOAL := all

# ------------------------------------------------------------------------------
# Project Defaults & Folders
# ------------------------------------------------------------------------------

TARGET  := boot
TARGROM := $(TARGET).bin
SRCDIR  := src/
BUILDDIR := build/
SRCS    := $(wildcard $(SRCDIR)*.s)
OBJS    := $(patsubst $(SRCDIR)%.s,$(BUILDDIR)%.o,$(SRCS))
INCS    := $(wildcard $(SRCDIR)*.inc)

# ------------------------------------------------------------------------------
# Toolchain Definitions
# ------------------------------------------------------------------------------

AS  := lwasm
LD  := lwlink
FIX := mot2bin

ASFLAGS := -f obj
LDFLAGS := -f srec -m map.txt -s linkscript

# ------------------------------------------------------------------------------
# Rules and Phony Targets
# ------------------------------------------------------------------------------

all: $(TARGROM)

# Fix srec into flashable bin file
$(TARGROM): $(TARGET).s19
	$(FIX) -out $@ $<

# Link objects
$(TARGET).s19: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

# Assemble objects
$(OBJS): $(BUILDDIR)%.o : $(SRCDIR)%.s
	-@mkdir -p $(BUILDDIR)
	$(AS) $(ASFLAGS) -o $@ $<

.IGNORE: clean
clean:
	@echo 'Cleaning up intermediary files...'
	@rm -rv $(TARGROM) $(TARGET).s19 $(BUILDDIR)
