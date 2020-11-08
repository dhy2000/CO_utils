// R-Type Arithmetic and Logical Instructions
#ifndef _ASM_R_
#define _ASM_R_
#include <stdio.h>
void rasm(const char *instr, int rd, int rs, int rt) {
    printf("%s $%d, $%d, $%d\n", instr, rd, rs, rt);
}
#define RASM(_instr) void _instr(int rd, int rs, int rt) {rasm(#_instr, rd, rs, rt);}

RASM(add)
RASM(sub)
RASM(addu)
RASM(subu)
RASM(slt)
RASM(sltu)
RASM(and)
RASM(or)
RASM(xor)
RASM(nor)


#endif 
