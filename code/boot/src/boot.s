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
  lda #%11000001 ; 8n1 serial, enable DLAB
  sta UART_LCR

  lda #$00       ; Set divisor to 12 (9600 baud)
  sta UART_DLL
  lda #$0C
  sta UART_DLM

  lda #%11000000 ; 8n1 serial, disable DLAB
  sta UART_LCR

  lda #%01000000 ; Enable RTS
  sta UART_MCR

  lda 'H         ; send 'H'
  sta UART_BUFR

WAIT
  sync           ; Wait for interrupts
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
