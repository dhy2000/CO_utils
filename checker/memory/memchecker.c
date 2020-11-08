#include <stdio.h> 
#include <string.h> 

#define _Accepted 0
#define _WrongAnswer 1

int main(int argc, char *argv[]) {
    // 2 arguments
    if (argc < 3) {
        printf("Arguments too few. standard out and cpu out needed.\n");
        printf("Usage: memchecker [standard_mem_file] [cpu_mem_file] \n");
        return -1;
    }
    printf(" ------ Memory Checker ------ \n\n");
    char *stdfname = argv[1], *cpufname = argv[2];
    FILE *fin_std = fopen(stdfname, "r"), *fin_cpu = fopen(cpufname, "r");
    if (fin_std == NULL) {
        printf("File Error: Cannot open %s !\n", stdfname);
        return -1;
    }
    if (fin_cpu == NULL) {
        printf("File Error: Cannot open %s !\n", cpufname);
        return -1;
    }
    unsigned int u1 = 0, u2 = 0;
    unsigned int addr = 0;
    unsigned int judge = _Accepted;
    while (fscanf(fin_std, "%x", &u1) != EOF) {
        u2 = 0;
        int flg = fscanf(fin_cpu, "%x", &u2);
        /*if (flg == EOF) {
            printf("Output Too Less: cpu mem terminated before std mem at address 0x%08x.\n", addr);
            judge = _WrongAnswer;
            break;
        }*/
        if (u1 != u2) { // value not equal
            printf("Wrong Answer at address 0x%08x. \n", addr);
            printf("  Your Output: 0x%08x, Expected: 0x%08x \n", u1, u2);
            judge = _WrongAnswer;
        }
        addr += 4;
    }
    if (fscanf(fin_cpu, "%x", &u2) != EOF) {
        // cpu still not finished
        printf("Output Limit Exceed: cpu mem is more than std mem at address 0x%08x. \n", addr);
        judge = _WrongAnswer;
    }

    printf("\nJudge : ");
    if (judge == _Accepted) {
        printf("Accepted");
    }
    else {
        printf("Wrong Answer");
    }
    
    fclose(fin_std);
    fclose(fin_cpu);
    return 0;
}
