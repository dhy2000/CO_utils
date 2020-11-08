#ifndef _ASM_SHIFT_
#define _ASM_SHIFT_
#include <stdio.h>
void shift(const char *instr, int rd, int rt, int shamt) {
    printf("%s $%d, $%d, %d\n", instr, rd, rt, shamt);
}
void shiftv(const char *instr, int rd, int rt, int rs) {
    printf("%s $%d, $%d, $%d\n", instr, rd, rt, rs);
}
#define SHIFT(_instr) void _instr(int rd, int rt, int shamt) {shift(#_instr, rd, rt, shamt);}
#define SHIFTV(_instr) void _instr(int rd, int rt, int rs) { shiftv(#_instr, rd, rt, rs);}

SHIFT(sll)
SHIFT(srl)
SHIFT(sra)

SHIFTV(sllv)
SHIFTV(srlv)
SHIFTV(srav)



#endif // 