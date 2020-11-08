// lui, ori, sw
// addi, andi, ori, xori, lui, slti, sltiu
#include "asm/registers.h"
#include "asm/loadimm.h"
#include "asm/rwmem.h"
#include "asm/i.h"
#include "asm/comment.h"

#include <stdlib.h>
#include <time.h>

const char *instr[] = {
    "addiu", "andi", "ori", "xori", "slti", "sltiu"
};
const int imm_ext[] = {
    1,      0,       0,     0,       1,       1
};
const int nums[] = {
    0, 1, -1, 2147483647, -2147483648
};
const short imms[] = {
    0, 1, -1, 32767, -2073, 3015
};
const int n_instr = sizeof(instr) / sizeof(instr[0]);
const int n_nums = sizeof(nums) / sizeof(nums[0]);
const int n_imms = sizeof(imms) / sizeof(imms[0]);
int addr;
void test_ins(const char *ins, int imm_ext, int x1, short im) {
    // use a random t register
    li(t0, x1);
    if (imm_ext) iasm(ins, t1, t0, im);
    else iuasm(ins, t1, t0, im);
    sw(t1, 0, addr);
    sw(t1, s0, addr);
    addr += 4;
}

int main()
{
    srand(time(NULL));
    freopen("../tests/test_I.asm", "w", stdout);
    rem("Test I-Type Instructions (Arithmetics)");
    rem("lui, ori, sw + addi, andi, ori, xori, lui, slti, sltiu");

    li(s0, 0x1000); // base address
    for (int i = 0; i < n_instr; i++) {
        rem(instr[i]);
        for (int j1 = 0; j1 < n_nums; j1++) {
            for (int j2 = 0; j2 < n_imms; j2++) {
                test_ins(instr[i], imm_ext[i], nums[j1], imms[j2]);
            }
        }
        test_ins(instr[i],imm_ext[i], rand(), rand());
        test_ins(instr[i], imm_ext[i], rand(), -rand());
        test_ins(instr[i], imm_ext[i], -rand(), rand());
        test_ins(instr[i], imm_ext[i], -rand(), -rand());
    }
    return 0;
}
