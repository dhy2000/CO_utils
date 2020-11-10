/* ------ A MIPS-32 Disassembler Written in C ------ */
/*
    Usage: disasm.c <hex_dump_textfile> <asm_file>

    This program accepts a text file with lines of hexdecimal instruction code, and decodes them into MIPS32 Assemble Code for Mars.

    Default Memory Configuration: Compact Data At Zero, PC is from 32'h0000_3000

    Supported instruction format and symbols:
    (mask: o - [opcode], s - $rs, t - $rt, d - $rd, f - [funct], h - shamt, i - immidiate, p - [special opcode], j - jtype immidiate)
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

// disasm.exe loadstore.hex loadstore.asm

#define WORD_SIZE 32
#define TEXT_SIZE 1024

typedef unsigned int Word;

const char *reg_name[] = {
    "$0",   // 0
    "$at",  // 1
    "$v0",  // 2
    "$v1",  // 3
    "$a0",  // 4
    "$a1",  // 5
    "$a2",  // 6
    "$a3",  // 7
    "$t0",  // 8
    "$t1",  // 9
    "$t2",  // 10
    "$t3",  // 11
    "$t4",  // 12
    "$t5",  // 13
    "$t6",  // 14
    "$t7",  // 15
    "$s0",  // 16
    "$s1",  // 17
    "$s2",  // 18
    "$s3",  // 19
    "$s4",  // 20
    "$s5",  // 21
    "$s6",  // 22
    "$s7",  // 23
    "$t8",  // 24
    "$t9",  // 25
    "$k0",  // 26
    "$k1",  // 27
    "$gp",  // 28
    "$sp",  // 29
    "$fp",  // 30
    "$ra"  // 31
};

typedef enum {NONE, ZERO_EXT, SIGN_EXT, OFFSET, LABEL, JLABEL} ImmType;

typedef enum {
    M_RS    = (1 << 0),     // for R/I type
    M_RT    = (1 << 1),     // for R/I type
    M_RD    = (1 << 2),     // for R type
    M_SHAMT = (1 << 3),     // for R-Shift type
    M_IMM   = (1 << 4),     // for I type
    M_JIMM  = (1 << 5)      // for J type
} OperandMask;

typedef enum {
    NOP,            // nop
    R_NORMAL,       // add, sub, addu, subu, and, or, nor, xor, slt, sltu, ......
        // instr $rd, $rs, $rt
    R_SHIFT_V,      // sllv, srlv, srav
        // instr $rd, $rt, $rs
    R_SHIFT,        // sll, srl, sra
        // instr $rd, $rt, shamt
    R_JR,           // jr
        // jr $rs
    R_JALR,         // jalr
        // jalr $rd, $rs
    I_NORMAL,       // addi, addiu, andi, ori, xori, slti, sltiu, ......
        // instr $rt, $rs, imm
    I_RT,           // lui, ......
        // instr $rt, imm
    I_MEMORY,       // lw, lh, lhu, lb, lbu, sw, sh, sb, ......
        // instr $rt offset($rs)
    I_BRANCH,       // beq, bne, ......
        // instr $rs, $rt, label(b)
    I_BRZERO,       // bgtz, blez, 
        // instr $rs, label(b)
    I_BRZERO_SPC,   // bgez, bltz, 
        // instr $rs, label(b)
    J_JUMP          // j, jal
        // instr label(j)
}InstrFormat;

typedef struct Instruction {
    char symbol[7];   // add, sub, xor, lui, bgez, ......
    char bitMask[33]; // for binary instruction format
    InstrFormat format;
    ImmType immType;
    unsigned int opMask;
}Instruction;

/* ------ Basic Instruction Set ------ */
// symbol, operMask, format, immType, operandMask
Instruction instrSet[] = {
    {
        "nop",  "00000000000000000000000000000000",
        NOP,    NONE,   0
    },
    // R Type
    {
        "add",  "000000ssssstttttddddd00000100000",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "sub",  "000000ssssstttttddddd00000100010",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "addu", "000000ssssstttttddddd00000100001",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "subu", "000000ssssstttttddddd00000100011",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "and",  "000000ssssstttttddddd00000100100",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "or",   "000000ssssstttttddddd00000100101",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "nor",  "000000ssssstttttddddd00000100111",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "xor",  "000000ssssstttttddddd00000100110",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "slt",  "000000ssssstttttddddd00000101010",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "sltu", "000000ssssstttttddddd00000101011",
        R_NORMAL,   NONE,   (M_RS | M_RT | M_RD)
    },
    // R Shift-V
    {
        "sllv", "000000ssssstttttddddd00000000100",
        R_SHIFT_V,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "srlv", "000000ssssstttttddddd00000000110",
        R_SHIFT_V,   NONE,   (M_RS | M_RT | M_RD)
    },
    {
        "srav", "000000ssssstttttddddd00000000111",
        R_SHIFT_V,   NONE,   (M_RS | M_RT | M_RD)
    },
    // R Shift
    {
        "sll",  "00000000000tttttdddddhhhhh000000",
        R_SHIFT,   NONE,   (M_RT | M_RD | M_SHAMT)
    },
    {
        "srl",  "00000000000tttttdddddhhhhh000010",
        R_SHIFT,   NONE,   (M_RT | M_RD | M_SHAMT)
    },
    {
        "sra",  "00000000000tttttdddddhhhhh000011",
        R_SHIFT,   NONE,   (M_RT | M_RD | M_SHAMT)
    },
    // JR
    {
        "jr",   "000000sssss000000000000000001000",
        R_JR,   NONE,   (M_RS)
    },
    // JALR
    {
        "jalr", "000000sssss00000ddddd00000001001",
        R_JALR,   NONE,   (M_RS | M_RD)
    },
    // I Normal
    {
        "addi", "001000ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, SIGN_EXT,  (M_RS | M_RT | M_IMM)
    },
    {
        "addiu","001001ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, SIGN_EXT,  (M_RS | M_RT | M_IMM)
    },
    {
        "andi", "001100ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, ZERO_EXT,  (M_RS | M_RT | M_IMM)
    },
    {
        "ori",  "001101ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, ZERO_EXT,  (M_RS | M_RT | M_IMM)
    },
    {
        "xori", "001110ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, ZERO_EXT,  (M_RS | M_RT | M_IMM)
    },
    {
        "slti", "001010ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, SIGN_EXT,  (M_RS | M_RT | M_IMM)
    },
    {
        "sltiu","001011ssssstttttiiiiiiiiiiiiiiii",
        I_NORMAL, SIGN_EXT,  (M_RS | M_RT | M_IMM)
    },
    // I RT
    {
        "lui",  "00111100000tttttiiiiiiiiiiiiiiii",
        I_RT, ZERO_EXT,  (M_RT | M_IMM)
    },
    // I Memory
    {
        "lw",   "100011ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "lh",   "100001ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "lhu",  "100101ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "lb",   "100000ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "lbu",  "100100ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "sw",   "101011ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "sh",   "101001ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    {
        "sb",   "101000ssssstttttiiiiiiiiiiiiiiii",
        I_MEMORY, OFFSET,  (M_RS | M_RT | M_IMM)
    },
    // I Branch
    {
        "beq",  "000100ssssstttttiiiiiiiiiiiiiiii",
        I_BRANCH, LABEL,  (M_RS | M_RT | M_IMM)
    },
    {
        "bne",  "000101ssssstttttiiiiiiiiiiiiiiii",
        I_BRANCH, LABEL,  (M_RS | M_RT | M_IMM)
    },
    // I Branch Zero
    {
        "bgtz", "000111sssss00000iiiiiiiiiiiiiiii",
        I_BRZERO, LABEL,  (M_RS | M_IMM)
    },
    {
        "blez", "000110sssss00000iiiiiiiiiiiiiiii",
        I_BRZERO, LABEL,  (M_RS | M_IMM)
    },
    // I Branch Zero (Special)
    {
        "bgez", "000001sssss00001iiiiiiiiiiiiiiii",
        I_BRZERO_SPC, LABEL,  (M_RS | M_IMM)
    },
    {
        "bltz", "000001sssss00000iiiiiiiiiiiiiiii",
        I_BRZERO_SPC, LABEL,  (M_RS | M_IMM)
    },
    // J Jump
    {
        "j",    "000010jjjjjjjjjjjjjjjjjjjjjjjjjj",
        J_JUMP, JLABEL, (M_JIMM)
    },
    {
        "jal",  "000011jjjjjjjjjjjjjjjjjjjjjjjjjj",
        J_JUMP, JLABEL, (M_JIMM)
    }
};
const int instrSetSize = (sizeof(instrSet) / sizeof(instrSet[0]));
/* ------ MIPS Assembly Program ------ */
typedef struct MIPSLine {
    int label;
    char text[25]; // addi $t1, $0, 100
    Instruction *instr;
}MIPSLine;
MIPSLine mipsProg[TEXT_SIZE];

// PC Count and Label Count
int pc_count = 0, label_count = 0;

int make_label(int pc) {
    if (mipsProg[pc].label > 0)
        return mipsProg[pc].label;
    return (mipsProg[pc].label = (++label_count));
}

int pcFromJumpImm(int jimm) {
    // minus 0xC00
    return jimm - 0x0C00;
}

/*
void printBin(const Word hex) {
    for (int i = WORD_SIZE - 1; i>= 0; i--){
        if (hex & (1 << i)) printf("1");
        else printf("0");
    }
    printf("\n");
}
*/

#define MASKI(i) (WORD_SIZE - 1 - (i))
int checkMaskMatch(const Word hex, const char *mask) {
    for (int i = 0; i < WORD_SIZE; i++) {
        int mi = MASKI(i);
        if (mask[mi] != '0' && mask[mi] != '1') continue;
        int bit = (hex & (1 << i)) ? 1 : 0;
        if (mask[mi] == '0' && !bit) continue;
        if (mask[mi] == '1' && bit) continue;
        return 0;
    }
    return 1;
}

void disAsm(const Word hex) {
    // distinguish which instruction it belongs to
    Instruction *instr = NULL;
    for (int i = 0; i < instrSetSize; i++) {
        if (checkMaskMatch(hex, instrSet[i].bitMask)) {
            instr = &instrSet[i];
            break;
        }
    }

    if (instr == NULL) {
        printf("Invalid Instruction: %08x \n", hex);
        return ;
    }
    // parse Operands
    int rs = 0, rt = 0, rd = 0;
    int imm = 0, jimm = 0, shamt = 0;
    for (int i = 0; i < WORD_SIZE; i++) {
        switch (instr->bitMask[i]) {
            case 's':
                rs = (rs << 1) | ((hex & (1 << MASKI(i))) ? 1 : 0);
                break;
            case 't':
                rt = (rt << 1) | ((hex & (1 << MASKI(i))) ? 1 : 0);
                break;
            case 'd':
                rd = (rd << 1) | ((hex & (1 << MASKI(i))) ? 1 : 0);
                break;
            case 'h':
                shamt = (shamt << 1) | ((hex & (1 << MASKI(i))) ? 1 : 0);
                break;
            case 'i':
                imm = (imm << 1) | ((hex & (1 << MASKI(i))) ? 1 : 0);
                break;
            case 'j':
                jimm = (jimm << 1) | ((hex & (1 << MASKI(i))) ? 1 : 0);
                break;
            default: ;
        }
    }
    imm &= 0xFFFF;
    
    if (instr->immType != ZERO_EXT) {
        imm = (short int) imm;
    }
    int bpc = pc_count, jpc = 0;
    int label = 0;
    if (instr->immType == LABEL) {
        bpc = pc_count + 1 + imm;
    }
    else if (instr->immType == JLABEL) {
        jpc = jimm - 0x0C00;
    }
    if (bpc < 0 || bpc > TEXT_SIZE) {
        printf("Invalid Branch on Instruction %08x: Out of range \n", hex);
        return ;
    }
    if (jpc < 0 || jpc > TEXT_SIZE) {
        printf("Invalid Jump on Instruction %08x: Out of range \n", hex);
        return ;
    }
    // disasm
    mipsProg[pc_count].instr = instr;
    char *text = mipsProg[pc_count].text;
    switch (instr->format)
    {
    case NOP:
        sprintf(text, "nop");
        break;
    case R_NORMAL:
        sprintf(text, "%-6s %s, %s, %s", instr->symbol, reg_name[rd], reg_name[rs], reg_name[rt]);
        break;
    case R_SHIFT_V:
        sprintf(text, "%-6s %s, %s, %s", instr->symbol, reg_name[rd], reg_name[rt], reg_name[rs]);
        break;
    case R_SHIFT:
        sprintf(text, "%-6s %s, %s, %d", instr->symbol, reg_name[rd], reg_name[rt], shamt);
        break;
    case R_JR:
        sprintf(text, "%-6s %s", instr->symbol, reg_name[rs]);
        break;
    case R_JALR:
        sprintf(text, "%-6s %s, %s", instr->symbol, reg_name[rd], reg_name[rs]);
        break;
    case I_NORMAL:
        sprintf(text, "%-6s %s, %s, %d", instr->symbol, reg_name[rt], reg_name[rs], imm);
        break;
    case I_RT:
        sprintf(text, "%-6s %s, %d", instr->symbol, reg_name[rt], imm);
        break;
    case I_MEMORY:
        sprintf(text, "%-6s %s, %d(%s)", instr->symbol, reg_name[rt], imm, reg_name[rs]);
        break;
    case I_BRANCH:
        label = make_label(bpc);
        mipsProg[bpc].label = label;
        sprintf(text, "%-6s %s, %s, L%d", instr->symbol, reg_name[rs], reg_name[rt], label);
        break;
    case I_BRZERO:
        label = make_label(bpc);
        mipsProg[bpc].label = label;
        sprintf(text, "%-6s %s, L%d", instr->symbol, reg_name[rs], label);
        break;
    case I_BRZERO_SPC:
        label = make_label(bpc);
        mipsProg[bpc].label = label;
        sprintf(text, "%-6s %s, L%d", instr->symbol, reg_name[rs], label);
        break;
    case J_JUMP:
        label = make_label(jpc);
        mipsProg[jpc].label = label;
        sprintf(text, "%-6s L%d", instr->symbol, label);
        break;
    default:
        break;
    }

    pc_count++;
}

int main(int argc, char *argv[]) {
    // 2 arguments
    if (argc < 3) {
        printf("Arguments too few. Hex Code needed.\n");
        printf("Usage: disasm [hex_text] [asm_text]\n");
        return -1;
    }

    printf(" ------ MIPS32 Disassembler ------ \n");
    char *hexfname = argv[1], *asmfname = argv[2];
    FILE *finhex = fopen(hexfname, "r"), *foutasm = fopen(asmfname, "w");
    if (finhex == NULL) {
        printf("File Error: Cannot open %s !\n", hexfname);
        return -1;
    }
    if (foutasm == NULL) {
        printf("File Error: Cannot write to %s !\n", asmfname);
        return -1;
    }

    Word hex = 0;
    while (fscanf(finhex, "%x", &hex) != EOF) {
        if (pc_count >= TEXT_SIZE) {
            printf("Out of .text Segment: Terminated!\n");
            break;
        }
        disAsm(hex);
    }
    for (int i = 0; i < TEXT_SIZE; i++) {
        int flg = 0;
        if (mipsProg[i].label != 0) fprintf(foutasm, "L%d:", mipsProg[i].label), flg = 1;
        if (mipsProg[i].text != NULL) fprintf(foutasm, "%s", mipsProg[i].text), flg = 1;
        if (flg) fprintf(foutasm, "\n");
        else break;
    }

    return 0;
}
