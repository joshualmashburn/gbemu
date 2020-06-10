//
// Created by joshua on 5/23/20.
//

#include "gb.h"

gb::gb()
{
    //initialize PC
    pc = 0x0u;

    //todo: initialize all register values that have a fixed value
    memory[0xFF00] |= 0xFF;

    //load boot rom
    //open file as binary stream and move file pointer to end
    std::ifstream file("mgb_boot.bin", std::ios::binary | std::ios::ate);

    if(file.is_open())
    {
        //get size of file and allocate a buffer to hold the contents
        std::streampos size = file.tellg();
        char* buffer = new char[size];

        //go back to beginning of file and fill buffer
        file.seekg(0, std::ios::beg);
        file.read(buffer, size);
        file.close();

        //load ROM contents into the gb's memory, starting at 0x0
        for (int i = 0; i < size; i++)
        {
            memory[i] = buffer[i];
        }

        //free the buffer
        delete[] buffer;
    }

}

void gb::LoadROM(const char *filename)
{
    //open file as binary stream and move file pointer to end
    std::ifstream file(filename, std::ios::binary | std::ios::ate);

    if(file.is_open())
    {
        //get size of file and allocate a buffer to hold the contents
        std::streampos size = file.tellg();
        char* buffer = new char[size];

        //go back to beginning of file and fill buffer
        file.seekg(0, std::ios::beg);
        file.read(buffer, size);
        file.close();

        //load ROM contents into the gb's memory, starting at 0x100
        for (int i = 0; i < size; i++)
        {
            memory[START_ADDRESS + i] = buffer[i];
        }

        //free the buffer
        delete[] buffer;
    }
}

void gb::Cycle() {
    //fetch instruction
    opcode = memory[pc];
    //output for debug
    std::printf("pc: %x\topcode: %x\n", pc, opcode);

    //increment pc before doing anything
    pc++;

    switch ((opcode& 0xF0u) >> 4)
    {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        case 7:
            break;
        case 8:
            break;
        case 9:
            break;
        case 0xA:
            break;
        case 0xB:
            break;
        case 0xC:
            break;
        case 0xD:
            break;
        case 0xE:
            break;
        case 0xF:
            break;
        default:
            OP_NOP();
    }
}

void gb::Joypad() {
    if(!(memory[0xFF00] & 0b00100000)) //if bit 5 is set 0
    {
        memory[0xFF00] = (memory[0xFF00] & 0xF0) + (directions & 0x0F);
    }
    else if(!(memory[0xFF00] & 0b00010000)) //if bit 4 is set 0
    {
        memory[0xFF00] = (memory[0xFF00] & 0xF0) + (buttons & 0x0F);
    }
}
//todo: Opcode implementations here

