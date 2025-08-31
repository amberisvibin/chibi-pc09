; CHIBI PC-09 Prototype #1 Boot ROM -- Interrupt and Reset Vectors
; Copyright (c) 2024-2025 Amber Zeller, Gale Faraday
; Licensed under MIT

  INCLUDE "reset.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Interrupt and Reset Vectors
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  SECTION VECTORS

VECTORS
  fdb $0000 ; Reserved
  fdb $0000 ; SWI3
  fdb $0000 ; SWI2
  fdb $0000 ; FIRQ
  fdb $0000 ; IRQ
  fdb $0000 ; SWI
  fdb $0000 ; NMI
  fdb RESET ; Reset
