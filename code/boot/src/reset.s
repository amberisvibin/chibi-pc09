; CHIBI PC-09 Prototype #1 Boot ROM -- Reset Handler
; Copyright (c) 2024-2025 Amber Zeller, Gale Faraday
; Licensed under MIT

  INCLUDE "hardware.inc"
  INCLUDE "serial.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Hardware Initialization Routines
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  SECTION RESET

  EXPORT RESET

RESET
  ; 8n1 Serial Enable DLAB
  lda #UARTF_LCR_WLS | UARTF_LCR_DLAB
  sta UART_LCR
  ; REVIEW: Potential endianness hiccough here
  ldd #$0C00           ; Set divisor to 12 (9600 baud)
  sta UART_DLM
  stb UART_DLL
  lda #(UARTF_LCR_WLS) ; 8n1 serial, disable DLAB
  sta UART_LCR
  lda #(UARTF_MCR_RTS) ; Enable Request-to-Send
  sta UART_MCR
  lda #'H               ; send 'H'
  sta UART_BUFR
WAIT@
  sync                 ; Wait for interrupts
  nop
  bra WAIT@
