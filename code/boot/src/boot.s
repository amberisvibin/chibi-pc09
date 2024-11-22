; CHIBI PC-09 Prototype #1 Boot ROM
; (Copyright (c) 2024 Amber Zeller

; UART registers
UART EQU $7F00

; When DLAB = 0:
BUFR EQU UART  ; TX/RX Buffer (Read for RX, Write for TX)
IER EQU UART+1 ; Interrupt Enable Register
IIR EQU UART+1 ; Interrupt Enable Register (Upon Read)
; When DLAB = 1
DLL EQU UART   ; Divisor Latch (LSB)
DLM EQU UART+1 ; Divisor Latch (MSB)

FCR EQU UART+2 ; FIFO Control Register (Upon Write)
LCR EQU UART+3 ; Line Control Register
MCR EQU UART+4 ; MODEM Control Register
LSR EQU UART+5 ; Line Status Register
MSR EQU UART+6 ; MODEM Status Register
SCR EQU UART+7 ; Scratch Register (Not for control just spare RAM)

  ORG $8000

RESET
  ; UART Setup
  lda %11000001 ; 8n1 serial, enable DLAB
  sta LCR

  lda $00       ; Set divisor to 12 (9600 baud)
  sta DLL
  lda $0C
  sta DLM

  lda %11000000 ; 8n1 serial, disable DLAB
  sta LCR

  lda %01000000 ; Enable RTS
  sta MCR

  lda 'H        ; send H
  sta BUFR

  ORG $FFF0
  ; Reset/Interrupt Vectors
  fdb $0000 ; Reserved
  fdb $0000 ; SWI3
  fdb $0000 ; SWI2
  fdb $0000 ; FIRQ
  fdb $0000 ; IRQ
  fdb $0000 ; SWI
  fdb $0000 ; NMI
  fdb RESET ; Reset
