; CHIBI PC-09 Prototype #1 Boot ROM -- Hardware Initialization and Reset Vecs
; Copyright (c) 2024 Amber Zeller, Gale Faraday
; Licensed under MIT

  INCLUDE "src/hardware.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Hardware Initialization Routines
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  SECTION "Reset"
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

  SECTION "Serial"

; Writes a char to the UART in non FIFO mode, preserves A.
; @param b: char to write
OUTCHAR
  pshs a               ; Preserve A
1
  lda UART_LSR         ; if LSR.THRE == 1 then write
  anda UARTF_LSR_THRE
  bne 1B               ; Loop if UART not ready yet
  stb UART_BUFR        ; Write char
  puls a               ; Restore A
  rts

; Writes a null terminated string to the UART in non FIFO mode, clobbers A and
; B.
; @param x: null terminated string start address.
OUTSTR
  ldb x                ; Get the next value from X
  cmpb #$00            ; Make sure that mother is non-null
  beq 2F
  leax 1,x             ; Increment X for our next char
1                      ; Loop point for UART waiting
  lda UART_LSR         ; Wait for UART to be ready
  anda UARTF_LSR_THRE
  bne 1B
  stb UART_BUFR        ; Actually do our write
  bra OUTSTR           ; Reset for the next char
2                      ; Jump point for end of routine
  rts

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Interrupt and Reset Vectors
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  SECTION "Vectors"
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
