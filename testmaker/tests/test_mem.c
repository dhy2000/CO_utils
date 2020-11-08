// Test Memory Read or Write
// lui, ori, addiu
// lw, sw, lh, sh, lb, sb, lhu, lbu

#include "asm/registers.h"
#include "asm/rwmem.h"
#include "asm/comment.h"
#include "asm/loadimm.h"
#include "asm/i.h"

#include <stdlib.h> 
#include <time.h>

int randi32() {
    int hi = rand() << (rand() % 2);
    int lo = rand() << (rand() % 2);
    return (hi << 16) + lo;
}

int main()
{
    freopen("../tests/test_mem.asm", "w", stdout);
    srand(time(NULL));
    rem("Test R/W");
    refreshreg();

    li(s0, 0x0000);
    for (int i = 0; i <= 30; i++) {
        li(a0, randi32());
        sw(a0, s0, 0);
        // lb
        for (int offset = 0; offset < 4; offset++) {
            lb(t0, s0, offset);
            sw(t0, s0, 4 + offset * 4);
        }
        // lbu
        for (int offset = 0; offset < 4; offset++) {
            lbu(t1, s0, offset);
            sw(t1, s0, 4 + 16 + offset * 4);
        }
        // lh
        for (int offset = 0; offset < 2; offset++) {
            lh(t2, s0, offset * 2);
            sw(t2, s0, 4 + 32 + offset * 4);
        }
        // lhu
        for (int offset = 0; offset < 2; offset++) {
            lhu(t3, s0, offset * 2);
            sw(t3, s0, 4 + 40 + offset * 4);
        }
        // sh
        sh(a0, s0, rand() % 28 * 2);
        // sb
        sb(a0, s0, rand() % 56);
        // add
        addiu(s0, s0, 0x50);
    }



    return 0;
}
