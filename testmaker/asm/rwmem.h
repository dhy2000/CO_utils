#ifndef _ASM_RWMEM_
#define _ASM_RWMEM_
#include <stdio.h>

void rw_mem(const char *instr, int reg, int base, int offset) {
    printf("%s $%d, %d($%d)\n", instr, reg, offset, base);
}
#define _rw(_instr) rw_mem(_instr, reg, base, offset);

void lw(int reg, int base, int offset) {
    // reg, base in [0, 31]
    _rw("lw")
}
void sw(int reg, int base, int offset) { _rw("sw") }
void lh(int reg, int base, int offset) { _rw("lh") }
void lhu(int reg, int base, int offset) { _rw("lhu") }
void sh(int reg, int base, int offset) { _rw("sh") }
void lb(int reg, int base, int offset) { _rw("lb") }
void lbu(int reg, int base, int offset) { _rw("lbu") }
void sb(int reg, int base, int offset) { _rw("sb") }

#endif