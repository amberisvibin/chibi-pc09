; CHIBI PC-09 Hardware Definitions
; Copyright (c) 2024 Amber Zeller, Gale Faraday
; Licensed under MIT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Hardware Base Addresses
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

UART_BASE EQU $7F00 ; UART Base Address
ROM_BASE EQU $8000  ; ROM Base Address and Entry Point
VECS_BASE EQU $FFF0 ; Vectors Base Address

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; UART Registers and Flags
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; When UARTF_DLAB = 0:
UART_BUFR EQU UART_BASE    ; TX/RX Buffer (Read for RX, Write for TX)
UART_IER EQU UART_BASE + 1 ; Interrupt Enable Register
UART_IIR EQU UART_BASE + 1 ; Interrupt Ident Register (Upon Read)

; When UARTF_DLAB = 1:
UART_DLL EQU UART_BASE     ; Divisor Latch (LSB)
UART_DLM EQU UART_BASE + 1 ; Divisor Latch (MSB)

UART_FCR EQU UART_BASE + 2 ; FIFO Control Register (Upon Write)
UART_LCR EQU UART_BASE + 3 ; Line Control Register
UART_MCR EQU UART_BASE + 4 ; MODEM Control Register
UART_LSR EQU UART_BASE + 5 ; Line Status Register
UART_MSR EQU UART_BASE + 6 ; MODEM Status Register
UART_SCR EQU UART_BASE + 7 ; Scratch Register (Not for control just spare RAM)

; UART Flags
UARTF_DLAB EQU %00000001
