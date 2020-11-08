// lui, ori, sw
// add, sub, addu, subu, slt, sltu, and, or, xor, nor

#include "asm/registers.h"
#include "asm/comment.h"
#include "asm/rwmem.h"
#include "asm/loadimm.h"
#include "asm/r.h"

#include <stdlib.h>
#include <time.h>

const char *instr[] = {"addu", "subu", "slt", "sltu", "and", "or", "xor", "nor"};
const int numbers[] = {
    0, 1, -1, 2147483647, -2147483648, -2147483647
};
const int num_instr = sizeof(instr) / sizeof(instr[0]);
const int num_numbers = sizeof(numbers) / sizeof(numbers[0]);

int addr = 0;
void test_ins(const char *ins, int x1, int x2) {
    li(t0, x1);
    li(t1, x2);
    rasm(ins, t2, t0, t1);
    sw(t2, 0, addr);
    addr += 4;
}

int main()
{
    srand(time(NULL));
    freopen("test_R.asm", "w", stdout);
    for (int i = 0; i < num_instr; i++) {
        rem(instr[i]);
        for (int j1 = 0; j1 < num_numbers; j1++) {
            for (int j2 = j1; j2 < num_numbers; j2++) {
                test_ins(instr[i], numbers[j1], numbers[j2]);
            }
        }
        test_ins(instr[i], rand(), rand());
        test_ins(instr[i], rand(), -rand());
        test_ins(instr[i], -rand(), -rand());
    }

    return 0;
}