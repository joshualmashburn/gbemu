//
// Created by joshua on 5/23/20.
//

#include <cstdint>
#include <fstream>
#include <string.h>

#ifndef GBEMUJM_GB_H
#define GBEMUJM_GB_H

const unsigned int START_ADDRESS = 0x100;
const unsigned int VIDEO_WIDTH = 160;
const unsigned int VIDEO_HEIGHT = 144;

class gb {
    uint8_t opcode;          //8-bit instructions
    uint8_t memory [8192]{};    //8KiB of memory
    /*
  0000-3FFF   16KB ROM Bank 00     (in cartridge, fixed at bank 00)
  4000-7FFF   16KB ROM Bank 01..NN (in cartridge, switchable bank number)
  8000-9FFF   8KB Video RAM (VRAM) (switchable bank 0-1 in CGB Mode)
  A000-BFFF   8KB External RAM     (in cartridge, switchable bank, if any)
  C000-CFFF   4KB Work RAM Bank 0 (WRAM)
  D000-DFFF   4KB Work RAM Bank 1 (WRAM)  (switchable bank 1-7 in CGB Mode)
  E000-FDFF   Same as C000-DDFF (ECHO)    (typically not used)
  FE00-FE9F   Sprite Attribute Table (OAM)
  FEA0-FEFF   Not Usable
  FF00-FF7F   I/O Ports
  FF80-FFFE   High RAM (HRAM)
  FFFF        Interrupt Enable Register
     */
    uint8_t A{}, F{}, B{}, C{}, D{}, E{}, H{}, L{}; //AF, BC, DE, HL
    /*
     * FLAGS
     * 7 = Zero
     * 6 = n (add/sub flag)
     * 5 = h (half-carry)
     * 4 = Carry
     * 3-0 always 0
     */
    uint16_t pc{};              //16-bit program counter
    uint16_t sp{};              //16-bit stack pointer

    void OP_NOP()
    {}

    //todo: opcode prototypes here

public:
    //graphics
    uint32_t video [VIDEO_WIDTH * VIDEO_HEIGHT]{};

    uint8_t directions{0xFF}, buttons{0xFF};

    gb();
    void LoadROM(char const *filename);
    void Cycle();
    void Joypad();
};

#endif //GBEMUJM_GB_H
