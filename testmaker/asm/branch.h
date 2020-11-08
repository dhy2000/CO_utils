#ifndef _ASM_BRANCH_
#define _ASM_BRANCH_

#include <stdio.h>
void br(const char *instr, int rs, int rt, const char *label) {
    printf("%s $%d, $%d, %s\n", instr, rs, rt, label);
}
void brz(const char *instr, int rs, const char *label) {
    printf("%s $%d, %s\n", instr, rs, label);
}
#define BR(_ins) br(_ins, rs, rt, label);
#define BRZ(_ins) brz(_ins, rs, label);

void beq(int rs, int rt, const char *label) { BR("beq") }
void bne(int rs, int rt, const char *label) { BR("bne") }
void bgez(int rs, const char *label) { BRZ("bgez") }
void bgtz(int rs, const char *label) { BRZ("bgtz") }
void blez(int rs, const char *label) { BRZ("blez") }
void bltz(int rs, const char *label) { BRZ("bltz") }


#endif