# CHIBI PC-09 Technical Specification

5-17-21 Amber Zeller

## Quick Specs

#### CPU

1, 1.5, 2 MHz Motorola 6809

#### Memory

64k SRAM on external card for optional MMU capability. Seperated into 2k blocks, numbered 0-31. Only 62k of memory is accessible, due to the I/O block.

#### I/O

2k block, position 30. Addresses EFFF-F7FE. Further subdivided into 128 devices of 16 addresses each. 

## Address Space Diagram

| Address Range | Description            |
| ------------- | ---------------------- |
| 0000 - 07FF   | Kernal Root Block      |
| 0800 - EFFE   | Standard Memory Blocks |
| EFFF - F7FE   | I/O Block              |
| F7FF - FFFF   | Vector Block           |

## I/O Block Description

11 bits per block

128 devices are possible, though will likely never be used. 

| Bits | Description       |
| ---- | ----------------- |
| 0-6  | Device selection  |
| 7-10 | Address selection |

## Expansion Card Description

Byte 0 of every card should contain a descriptor. The structure of the descriptor is described in the following table.

| Bits | Descriptor |
| ---- | ---------- |
| 0-2  | Type       |

### Type Descriptor Table

| Type Descriptor | Description                     | Example  |
| --------------- | ------------------------------- | -------- |
| 000             | Block Storage                   | SD Card  |
| 001             | ANSI I/O Stream                 | UART     |
| 010             | ANSI Compatible Graphics Device | VGA64    |
| 011             | Input Device                    | Keyboard |
| 1xx             | Other                           | Other    |
