#ifndef _ASM_JUMP_
#define _ASM_JUMP_
#include <stdio.h> 
 
void j(const char *label) {
    printf("j %s\n", label);
}
void jal(const char *label) {
    printf("jal %s\n", label);
}
void jr(int rs) {
    printf("jr $%d\n", rs);
}
void jalr(int rd, int rs) {
    printf("jalr $%d, $%d\n", rd, rs);
}


#endif // 