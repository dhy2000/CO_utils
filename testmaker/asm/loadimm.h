#ifndef _ASM_LI_
#define _ASM_LI_

#include <stdio.h>
void li(int reg, unsigned int imm) {
    // assert(reg >= 0 && reg <= 31)
    if (imm < 65536) {
        printf("ori $%d, $0, %#x\n", reg, imm);
    }
    else {
        printf("lui $%d, %#x\n", reg, (imm & 0xFFFF0000) >> 16);
        printf("ori $%d, $%d, %#x\n", reg, reg, imm & 0x0000FFFF);
    }
}

void refreshreg() {
    for (int i = 0; i < 32; i++) {
        if (i == gp) {
            li(gp, 0x1800);
        }
        else if (i == sp) {
            li(sp, 0x2ffc);
        }
        else
            li(i, ((0xface + i) << 16) + (i + 33));
    }
}

#endif // _ASM_LI_

