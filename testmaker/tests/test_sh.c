// Shift Instructions
// lui, ori, sw
// sll, srl, sra

#include "asm/registers.h"
#include "asm/comment.h"
#include "asm/shift.h"
#include "asm/loadimm.h"
#include "asm/rwmem.h"

#include <stdlib.h> 
#include <time.h>

const char *sh_ins[] = {"sll", "srl", "sra"};
const char *shv_ins[] = {"sllv", "srlv", "srav"};

const int nums[] = {0, 1, -1, 2147483647, -2147483648, -998244353, 19260817};
const int shamt[] = {0, 1, 2, 5, 16, 31};
const int n_nums = sizeof(nums) / sizeof(nums[0]);
const int n_shamt = sizeof(shamt) / sizeof(shamt[0]);
int addr = 0;

int main()
{
    freopen("../tests/test_sh.asm", "w", stdout);
    rem("Test Shift Instructions");
    rem("sll, srl, sra");
    srand(time(NULL));
    rem("test(sll)");
    for (int i = 0; i < n_nums; i++) {
        for (int j = 0; j < n_shamt; j++) {
            li(t1, nums[i]);
            sll(t2, t1, shamt[j]);
            sw(t2, 0, addr);
            addr += 4;
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < n_shamt; j++) {
            li(t1, rand());
            sll(t2, t1, rand() % 32);
            sw(t2, 0, addr);
            addr += 4;
        }
    }
    rem("test(srl)");
    for (int i = 0; i < n_nums; i++) {
        for (int j = 0; j < n_shamt; j++) {
            li(t1, nums[i]);
            srl(t2, t1, shamt[j]);
            sw(t2, 0, addr);
            addr += 4;
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < n_shamt; j++) {
            li(t1, rand());
            srl(t2, t1, rand() % 32);
            sw(t2, 0, addr);
            addr += 4;
        }
    }

    rem("test(sra)");
    for (int i = 0; i < n_nums; i++) {
        for (int j = 0; j < n_shamt; j++) {
            li(t1, nums[i]);
            sra(t2, t1, shamt[j]);
            sw(t2, 0, addr);
            addr += 4;
        }
    }
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < n_shamt; j++) {
            li(t1, rand());
            sra(t2, t1, rand() % 32);
            sw(t2, 0, addr);
            addr += 4;
        }
    }

    return 0;
}