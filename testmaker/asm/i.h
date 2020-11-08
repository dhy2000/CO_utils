// I-Type Arithmetic and Logical Instruction
#ifndef _ASM_I_
#define _ASM_I_
#include <stdio.h> 
void iasm(const char *instr, int rt, int rs, short imm) {
    printf("%s $%d, $%d, %hd\n", instr, rt, rs, imm);
}
void iuasm(const char *instr, int rt, int rs, unsigned short imm) {
    printf("%s $%d, $%d, %hu\n", instr, rt, rs, imm);
}
#define IASM(_instr) void _instr(int rt, int rs, short imm) {iasm(#_instr, rt, rs, imm);}
#define IUASM(_instr) void _instr(int rt, int rs, short imm) {iuasm(#_instr, rt, rs, imm);}

IASM(addi)
IASM(addiu)
IUASM(andi)
IUASM(ori)
IUASM(xori)
// IASM(lui)
IASM(slti)
IUASM(sltiu)



#endif