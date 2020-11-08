// Branch Test

#include "asm/registers.h"
#include "asm/comment.h"
#include "asm/branch.h"
#include "asm/label.h"
#include "asm/loadimm.h"
#include "asm/rwmem.h"

#include <stdlib.h>
#include <time.h>

#define LEN(x) (sizeof((x)) / sizeof((x)[0]))

const char *b_ins[] = {"beq", "bne"};
const char *bz_ins[] = {"bgez", "bltz", "blez", "bgtz"};
const int n_b = LEN(b_ins), n_bz = LEN(bz_ins);
const int nums[] = {0, 1, -1, 65535, -3, 2147483647, -2147483648};
const int n_nums = LEN(nums);

int addr = 0;

void test_branch(const char *ins, int x1, int x2) {
    char label1[6] = "", label2[6] = "";
    sprintf(label1, "LA%d", addr >> 2);
    sprintf(label2, "LB%d", addr >> 2);
    li(s1, rand() * 32767 + rand());
    li(s2, rand() * 32767 + rand());
    li(t0, x1);
    li(t1, x2);
    br(ins, t0, t1, label2);
    label(label1);
    sw(s1, 0, addr);
    // addr += 4;
    label(label2);
    sw(s2, s0, addr);
    addr += 4;
}
void test_branch_z(const char *ins, int x1) {
    char label1[6] = "", label2[6] = "";
    sprintf(label1, "LA%d", addr >> 2);
    sprintf(label2, "LB%d", addr >> 2);
    li(s1, rand() * 32767 + rand());
    li(s2, rand() * 32767 + rand());
    li(t0, x1);
    // li(t1, x2);
    brz(ins, t0, label2);
    label(label1);
    sw(s1, 0, addr);
    
    label(label2);
    sw(s2, s0, addr);
    addr += 4;
}

int main()
{
    freopen("../tests/test_b.asm", "w", stdout);
    rem("test branch");
    refreshreg();
    li(s0, 0x1800);
    for (int i = 0; i < n_b; i++) {
        for (int j1 = 0; j1 < n_nums; j1++) {
            for (int j2 = j1; j2 < n_nums; j2++) {
                test_branch(b_ins[i], nums[j1], nums[j2]);
            }
        }
    }
    for (int i = 0; i < n_bz; i++) {
        for (int j1 = 0; j1 < n_nums; j1++) {
            test_branch_z(bz_ins[i], nums[j1]);
        }
        test_branch_z(bz_ins[i], rand());
        test_branch_z(bz_ins[i], -rand());
    }


    return 0;
}