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
	@echo ""

$(TARGET): $(OBJS)

$(OBJS): $(BUILDDIR)%.o : $(SRCDIR)%.s
	-@mkdir -p $(BUILDDIR)
	$(AS) --obj -o $@ $<

clean:
	rm -rvf $(BUILDDIR) $(TARGET)
