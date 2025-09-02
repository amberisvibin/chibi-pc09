; CHIBI PC-09 Prototype #1 Boot ROM -- Serial Driver
; Copyright (c) 2024-2025 Amber Zeller, Gale Faraday
; Licensed under MIT

  INCLUDE "hardware.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Serial UART Driver
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  SECTION SERIAL

  EXPORT OUTCHAR
  EXPORT OUTSTR

; Writes a char to the UART in non FIFO mode, preserves A.
; @param b: char to write
OUTCHAR
  pshs a               ; Preserve A
NOTREADY@
  lda UART_LSR         ; if LSR.THRE == 1 then write
  anda UARTF_LSR_THRE
  bne NOTREADY@        ; Loop if UART not ready yet
  stb UART_BUFR        ; Write char
  puls a               ; Restore A
  rts

; Writes a null terminated string to the UART in non FIFO mode, clobbers A and
; B.
; @param x: null terminated string start address.
OUTSTR
  ldb 0,x              ; Get the next value from X
  cmpb #$00            ; Make sure that we aren't at a terminator
  beq END@
  leax 1,x             ; Increment X for our next char
NOTREADY@              ; Loop point for UART waiting
  lda UART_LSR         ; Wait for UART to be ready
  anda UARTF_LSR_THRE
  bne NOTREADY@
  stb UART_BUFR        ; Actually do our write
  bra OUTSTR           ; Reset for the next char
END@                   ; Jump point for end of routine
  rts
