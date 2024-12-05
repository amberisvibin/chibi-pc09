; CHIBI PC-09 Hardware Definitions
; Copyright (c) 2024 Amber Zeller, Gale Faraday
; Licensed under MIT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Hardware Base Addresses
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SRAM_BASE EQU $0000 ; SRAM Base Address
UART_BASE EQU $7F00 ; UART Base Address
ROM_BASE  EQU $8000 ; ROM Base Address and Entry Point
VECS_BASE EQU $FFF0 ; Vectors Base Address

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; UART Registers and Flags
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; When UARTF_LCR_DLAB = 0:
UART_BUFR EQU UART_BASE    ; TX/RX Buffer (Read for RX, Write for TX)
UART_RBR EQU UART_BASE     ; RX Buffer Register
UART_THR EQU UART_BASE     ; TX Holding Register
UART_IER EQU UART_BASE + 1 ; Interrupt Enable Register

; When UARTF_LCR_DLAB = 1:
UART_DLL EQU UART_BASE     ; Divisor Latch (LSB)
UART_DLM EQU UART_BASE + 1 ; Divisor Latch (MSB)

; Independent of DLAB:
UART_IIR EQU UART_BASE + 2 ; Interrupt Ident Register (Upon Read)
UART_FCR EQU UART_BASE + 2 ; FIFO Control Register (Upon Write)
UART_LCR EQU UART_BASE + 3 ; Line Control Register
UART_MCR EQU UART_BASE + 4 ; MODEM Control Register
UART_LSR EQU UART_BASE + 5 ; Line Status Register
UART_MSR EQU UART_BASE + 6 ; MODEM Status Register
UART_SCR EQU UART_BASE + 7 ; Scratch Register (Not for control just spare RAM)

; UART Flags for Interrupt Enable Register:
UARTF_IER_ERBFI EQU %10000000 ; Enable Received Data Available Interrupt
UARTF_IER_ETBEI EQU %01000000 ; Enable Transmitter Holding Register Empty Interrupt
UARTF_IER_ELSI  EQU %00100000 ; Enable Receiver Line Status Interrupt
UARTF_IER_EDSSI EQU %00010000 ; Enable MODEM Status Interrupt

; UART Flags for FIFO Control Register:
UARTF_FCR_FE   EQU %10000000 ; FIFO Enabled
UARTF_FCR_RFR  EQU %01000000 ; RCVR FIFO Reset
UARTF_FCR_XFR  EQU %00100000 ; XMIT FIFO Reset
UARTF_FCR_DMS  EQU %00010000 ; DMA Mode Select
UARTF_FCR_RTL  EQU %00000010 ; RCVR Trigger (LSB)
UARTF_FCR_RTM  EQU %00000001 ; RCVR Trigger (MSB)

; UART Flags for Interrupt Ident Register:
UARTF_IIR_INP  EQU %10000000 ; Reset if Interrupt Pending; 'INP' = Interrupt Not Pending
UARTF_IIR_IIDM EQU %01110000 ; Interrupt ID Mask
UARTF_IIR_FEM  EQU %00000011 ; FIFOs Enabled Mask

; UART Flags for Line Control Register:
UARTF_LCR_8N1  EQU %11000000 ; 8n1 Serial Mode
UARTF_LCR_STB  EQU %00100000 ; Stop Bits
UARTF_LCR_PEN  EQU %00010000 ; Parity Enable
UARTF_LCR_EPS  EQU %00001000 ; Even Parity Select
UARTF_LCR_SPR  EQU %00000100 ; Stick Parity
UARTF_LCR_BRK  EQU %00000010 ; Set Break
UARTF_LCR_DLAB EQU %00000001 ; Divisor Latch Access Bit

; UART Flags for MODEM Control Register:
UARTF_MCR_DTR  EQU %10000000 ; Data Terminal Ready
UARTF_MCR_RTS  EQU %01000000 ; Enabling Request to Send
UARTF_MCR_OUT1 EQU %00100000 ; Out 1
UARTF_MCR_OUT2 EQU %00010000 ; Out 2
UARTF_MCR_LOOP EQU %00001000 ; Loop

; UART Flags for Line Status Register:
UARTF_LSR_DR   EQU %10000000 ; Data Ready
UARTF_LSR_OE   EQU %01000000 ; Overrun Error
UARTF_LSR_PE   EQU %00100000 ; Parity Error
UARTF_LSR_FE   EQU %00010000 ; Framing Error
UARTF_LSR_BI   EQU %00001000 ; Break Interrupt
UARTF_LSR_THRE EQU %00000100 ; Transmitter Holding Register
UARTF_LSR_TEMT EQU %00000010 ; Transmitter Empty
UARTF_LSR_FIFO EQU %00000001 ; Error in RCVR FIFO

; UART Flags for MODEM Status Register:
UARTF_MSR_DCTS EQU %10000000 ; Delta Clear to Send
UARTF_MSR_DDSR EQU %01000000 ; Delta Data Set Ready
UARTF_MSR_TERI EQU %00100000 ; Trailing Edge Ring Indicator
UARTF_MSR_DDCD EQU %00010000 ; Delta Data Carrier Detect
UARTF_MSR_CTS  EQU %00001000 ; Clear To Send
UARTF_MSR_DSR  EQU %00000100 ; Data Set Ready
UARTF_MSR_RI   EQU %00000010 ; Ring Indicator
UARTF_MSR_DCD  EQU %00000001 ; Data Carrier Detect

; vim: ft=asm
