# 6309 Board Prototype #1 Specs

HD63C09 CPU @ 3MHz
AS6C62256-55 SRAM (32KB)
SST39SF010A-70 FLASH (32KB Used)
PC16550 UART @ 1.8342MHz

## Memory Map

| Device | Location  |
|--------|-----------|
| FLASH  | 8000-FFFF |
| UART   | 7F00-7FFF |
| SRAM   | 0000-7EFF |

## Truth Table

| A15 | A14-A9 | A8 | Chip   |
|-----|--------|----|--------|
| H   | x      | x  | FLASH  |
| L   | x      | L  | SRAM   |
| L   | H      | H  | UART   |