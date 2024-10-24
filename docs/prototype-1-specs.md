# 6309 Board Prototype #1 Specs

HD63C09 CPU @ 3MHz
HM62256BLP-7 SRAM
AT28C256-15 EEPROM
ST16C550 UART @ 1.8342MHz (XO due to lack of 22pf 1.8432MHz XTALs)

## Memory Map

| Device | Location  |
|--------|-----------|
| EEPROM | 8000-FFFF |
| UART   | 7F00-7FFF |
| SRAM   | 0000-7EFF |

## Truth Table

| A15 | A14-A9 | A8 | Chip   |
|-----|--------|----|--------|
| H   | x      | x  | EEPROM |
| L   | x      | L  | SRAM   |
| L   | H      | H  | UART   |