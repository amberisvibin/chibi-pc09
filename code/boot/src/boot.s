; CHIBI PC-09 Prototype #1 Boot ROM -- Hardware Initialization and Reset Vecs
; Copyright (c) 2024 Amber Zeller, Gale Faraday
; Licensed under MIT

  INCLUDE "src/hardware.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Hardware Initialization Routines
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ORG ROM_BASE

RESET
  ; 8n1 Serial Enable DLAB
  lda #(UARTF_LCR_WLS | UARTF_LCR_DLAB)
  sta UART_LCR

  ; REVIEW: Potential endianness hiccough here
  ldd #$0C00           ; Set divisor to 12 (9600 baud)
  sta UART_DLM
  stb UART_DLL

  lda #(UARTF_LCR_WLS) ; 8n1 serial, disable DLAB
  sta UART_LCR

  lda #(UARTF_MCR_RTS) ; Enable Request-to-Send
  sta UART_MCR

  lda 'H               ; send 'H'
  sta UART_BUFR

WAIT
  sync                 ; Wait for interrupts
  nop
  bra WAIT

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Interrupt and Reset Vectors
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ORG VECS_BASE

VECTORS
  fdb $0000 ; Reserved
  fdb $0000 ; SWI3
  fdb $0000 ; SWI2
  fdb $0000 ; FIRQ
  fdb $0000 ; IRQ
  fdb $0000 ; SWI
  fdb $0000 ; NMI
  fdb RESET ; Reset
