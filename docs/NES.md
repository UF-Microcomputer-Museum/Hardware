# A breakdown of how the NES/Famicom hardware works

The Family Computer (Famicom) was released in 1983 in Japan and later internationally as the Nintendo Entertainment System (NES) in 1985.

<figure>
  <img src="https://upload.wikimedia.org/wikipedia/commons/4/4c/Nintendo-Famicom-Console-Set-FL.png" alt="Famicom Console" width="400">
  <figcaption>Family Computer ("Famicom") main unit (with hardwired controllers)</figcaption>
</figure>

<figure>
  <img src="https://upload.wikimedia.org/wikipedia/commons/b/b2/NES-Console-Set.png" alt="NES Console" width="400">
  <figcaption>NES Control Deck (with detachable controllers)</figcaption>
</figure>

## The CPU

The CPU was either the **Ricoh 2A03** for the NTSC version or the **Ricoh 2A07** for the PAL version. These CPUs were an unlicensed derivative of the **MOS Technology 6502 core**.

Specs:

- **Based on**: MOS Technology 6502
- **Clock Speed**:
    - NTSC: ~1.79 MHz
    - PAL: ~1.66 MHz
- **Architecture**: 8-bit
- **Registers**:
    - A (Accumulator)
    - X, Y (Index registers)
    - Stack Pointer (SP)
    - Program Counter (PC)
    - Status Flags

### Built-in Audio Channels

- **5 channels**:
    - 2 Pulse wave generators
    - 1 Triangle wave
    - 1 Noise generator
    - 1 DPCM (Delta Pulse Code Modulation) channel

## PPU (Picture Processing Unit): Ricoh RP2C02

- **Resolution**: 256 × 240 pixels
- **Colors**: 54-color palette (simultaneous display of 25 colors)
- **Video RAM (VRAM)**: 2 KB
- **Sprites**: Supports up to 64 sprites (8x8 or 8x16)

## Memory

### Internal RAM
- **Size**: 2 KB (WRAM)
- Used for temporary variables, stack, and general program data

### Cartridge RAM (PRG RAM)
- Varies per cartridge (e.g., 8 KB to 32 KB)
- May include battery backup for saves

## Controller Input

- **Ports**: 2 controller ports
- **Standard Controller**:
    - D-Pad
    - A, B buttons
    - Select
    - Start

Controllers used a **serial shift register** to send data to the console.

## References

- [Nesdev Wiki](https://www.nesdev.org/wiki/Main_Page)
- [Visual 6502](https://visual6502.org/)
- [NES Architecture](https://www.copetti.org/writings/consoles/nes)
