#include "asm/registers.h"
#include "asm/loadimm.h"
#include "asm/rwmem.h"
#include "asm/label.h"
#include "asm/r.h"
#include "asm/i.h"
#include "asm/jump.h"
#include "asm/branch.h"

int main()
{
    li(v0, 0x10000);
    li(t0, 0x12345678);
    li(s0, 0xFACEBAAD);
    li(t1, 234);
    iasm("add", t0, t1, 0x122);
    sw(t0, 0, 0);
    sw(t1, 0, 4);

    li(t0, 1);
    li(t1, 2);
    li(t2, 3);
    li(t3, 3);
    label("L1");
    li(s1, 2073);
    sw(t0, 0, 8);
    j("L3");
    label("L2");
    li(s1, 3075);
    sw(t0, 0, 12);
    j("L3");

    label("L3");
    return 0;
}