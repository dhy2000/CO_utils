// test jump

#include "asm/registers.h"
#include "asm/jump.h"
#include "asm/loadimm.h"
#include "asm/comment.h"
#include "asm/label.h"
#include "asm/rwmem.h"

void mklabel(int i) {
    char lb[7] = "";
    sprintf(lb, "L%d", i);
    label(lb);
}

int raaddr = 0, valaddr = 0;

void storera(int regra) {
    sw(regra, 0, raaddr);
    raaddr += 4;
}

void storeval(int reg, int val) {
    li(reg, val);
    sw(reg, s0, valaddr);
    valaddr += 4;
}


int main()
{
    freopen("../tests/test_j.asm", "w", stdout);
    srand(time(NULL));
    rem("Test Jump");
    refreshreg();
    li(ra, 0);
    li(s0, 0x1000);
    j("L1");
    storeval(s1, rand());
    mklabel(1);
    
    


    return 0;
}