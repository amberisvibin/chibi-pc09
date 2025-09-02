; CHIBI PC-09 Prototype #1 Boot ROM -- Memory Testing Routines
; Copyright (c) 2024-2025 Amber Zeller, Gale Faraday
; Licensed under MIT

  INCLUDE "hardware.inc"
  INCLUDE "serial.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Memory Testing Routines
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  SECTION MEMTEST

; RAM testing routine. Ported to 6809 from 6800, based on source for ROBIT-2 for
; MIKBUG.
RAMTEST
  ldx #SRAM_BASE
AGAIN@                 ; Store 1 in memory
  lda #1               ; Set [X] to 1
  sta 0,x
  cmpa 0,x             ; If failed print out an error indicator
  bne ERR@
NEXT@                  ; Loop point for next address
  asla                 ; Shift A and [X] left
  asl 0,x
  cmpa 0,x             ; Compare A and [X]
  bne ERR@
  cmpa #$80            ; Only test up to $80
  bne NEXT@            ; Loop if not $80
  cmpx #$60FF          ; Compare X to end of RAM
  beq PASS@            ; Finish if we're at the end
  leax 1,x             ; Increment X
  bra AGAIN@
ERR@                   ; Write out error indicator
  ldb #'X
  jsr OUTCHAR
PASS@                  ; Pass test
  ldb #'P
  jsr OUTCHAR
  rts
