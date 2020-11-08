#ifndef _ASM_LABEL_
#define _ASM_LABEL_
#include <stdio.h>
void label(const char *label) {
    printf("%s: ", label);
}
#endif