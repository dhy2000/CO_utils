// displaychecker.exe disp1.txt disp2.txt

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>

#define GETS_LIM 10000
char *my_gets(char *dest, FILE *fp) {
    char c = 0, *p = dest;
    int cnt = 0;
    while ((c = fgetc(fp)) != EOF && c != '\n' && cnt < GETS_LIM)
        *(p++) = c, cnt++;
    if (c == EOF && p == dest) return NULL;
    *p = 0;
    while ((*(p - 1)) == '\r' || (*(p - 1)) == '\n')
        *(--p) = 0;
    return dest;
}

/* ------ Format Checker and Data Parser ------ */
#define ISDEC(_c) ((_c)>='0'&&(_c)<='9')
#define ISHEX(_c) (((_c)>='0'&&(_c)<='9')||((_c)>='a'&&(_c)<='z'))
#define DEHEX(_c) (((_c)>='0'&&(_c)<='9')?((_c)-'0'):((_c)-'a'+10))
// return true if the format is correct, and store [time], [pc], [addr], [data] into variables of 4 pointers
// return false if the format is wrong.
#define DEST_GRF 0
#define DEST_DM 1

enum State {S_TIME, S_PC, S_GRF, S_DMADDR, S_DATA};

bool parse_line(const char *sp, int *p_time, int *p_pc, int *p_dest, int *p_addr, int *p_data) {
#define CH (*sp)
    uint32_t time = 0, pc = 0, dest = 0, addr = 0, data = 0;
    bool num_flg = 0;
    int num_cnt = 0;
    /* time */
    while (CH && CH != '@' && !(CH >= '0' && CH <= '9')) sp++;
    if (CH != '@') {
        while (CH >= '0' && CH <= '9') {
            time = (time << 3) + (time << 1) + (CH ^ '0');
            sp++;
        }
    }
    // skip not`@`s
    while (CH && CH != '@') sp++;
    if (CH != '@') return false;
    sp++;
    /* ------ PC ------ */
    while (CH && !(ISHEX(CH))) sp++;
    if (!CH) return false;
    num_cnt = 0;
    while (ISHEX(CH)) {
        pc = (pc << 4) + DEHEX(CH);
        num_cnt++;
        if (num_cnt > 8) break;
        sp++;
    }
    if (num_cnt != 8) return false;
    while (CH && CH != ':') sp++;
    if (CH != ':') return false;
    /* ------ Check GRF or DM ------ */
    while (CH && CH != '*' && CH != '$') sp++;
    if (!CH) return false;
    if (CH == '$') dest = DEST_GRF;
    else dest = DEST_DM;
    sp++;
    while (CH && !ISHEX(CH)) sp++;
    if (!CH) return false;
    if (dest == DEST_GRF) {
        num_cnt = 0;
        while (ISDEC(CH)) {
            addr = (addr << 3) + (addr << 1) + (CH ^ '0');
            num_cnt++;
            if (num_cnt >= 4) break;
            sp++;
        }
        if (ISHEX(CH)) return false;
        if (num_cnt >= 4) return false;
    }
    else {
        num_cnt = 0;
        while (ISHEX(CH)) {
            addr = (addr << 4) + DEHEX(CH);
            num_cnt ++;
            if (num_cnt > 8) break;
            sp++;
        }
        if (num_cnt != 8) return false;
    }
    while (CH && CH != '<') sp++;
    if (CH != '<') return false;
    sp++;
    if (CH != '=') return false;
    sp++;
    while (CH && !ISHEX(CH)) sp++;
    if (!CH) return false;
    num_cnt = 0;
    while (ISHEX(CH)) {
        data = (data << 4) + DEHEX(CH);
        num_cnt++;
        if (num_cnt > 8) break;
        sp++;
    }
    if (num_cnt != 8) return false;
    /*if (dest == DEST_GRF)
        printf("GRF: Time = %d, PC = %08x, grf = %d, data = %08x\n", time, pc, addr, data);
    else 
        printf("DM: Time = %d, PC = %08x, addr = %08x, data = %08x\n", time, pc, addr, data);
    */
    
    *p_time = time;
    *p_pc = pc;
    *p_dest = dest;
    *p_addr = addr;
    *p_data = data;
    return true;
#undef CH
}

// Message Parsed
int mars_time, mars_pc, mars_dest, mars_grf, mars_addr, mars_data;
int cpu_time, cpu_pc, cpu_dest, cpu_grf, cpu_addr, cpu_data;
char mars_line[10005], cpu_line[10005];

int main(int argc, char *argv[])
{
    // 2 arguments
    if (argc < 3) {
        printf("Arguments too few. Mars display and CPU display needed.\n");
        printf("Usage: displaychecker [mars_display_message] [cpu_display_message] \n");
        return -1;
    }
    printf(" ------ Display Message Checker ------ \n\n");
    char *marsfname = argv[1], *cpufname = argv[2];
    FILE *fin_mars = fopen(marsfname, "r"), *fin_cpu = fopen(cpufname, "r");
    if (fin_mars == NULL) {
        printf("File Error: Cannot open %s !\n", marsfname);
        return -1;
    }
    if (fin_cpu == NULL) {
        printf("File Error: Cannot open %s !\n", cpufname);
        return -1;
    } // */
    /*parse_line("# 000100@0000300c: *00000004 <= 00000010",
        &cpu_time, &cpu_pc, &cpu_dest, &cpu_addr, &cpu_data);*/
    bool judge_result = true;
    int mars_lineid = 0, cpu_lineid = 0;
    bool flg_mars = 0, flg_cpu = 0;
    flg_mars = (my_gets(mars_line, fin_mars) != NULL) ; 
    flg_cpu = (my_gets(cpu_line, fin_cpu) != NULL);
    while (flg_mars && flg_cpu) {
        mars_lineid += flg_mars;
        cpu_lineid += flg_cpu;
        bool valid_mars = parse_line(mars_line, &mars_time, &mars_pc, &mars_dest, &mars_addr, &mars_data);
        bool valid_cpu = parse_line(cpu_line, &cpu_time, &cpu_pc, &cpu_dest, &cpu_addr, &cpu_data);
        while ((flg_mars && !valid_mars) || (flg_cpu && !valid_cpu)) {
            if (!valid_mars) {
                printf("- Omitted Mars_display Line %d\n", mars_lineid);
                flg_mars = (my_gets(mars_line, fin_mars) != NULL);
                mars_lineid += flg_mars;
                valid_mars = flg_mars && parse_line(mars_line, &mars_time, &mars_pc, &mars_dest, &mars_addr, &mars_data);
            }
            if (!valid_cpu) {
                printf("- Omitted CPU_display Line %d\n", cpu_lineid);
                flg_cpu = (my_gets(cpu_line, fin_cpu) != NULL);
                cpu_lineid += flg_cpu;
                valid_cpu = flg_cpu && parse_line(cpu_line, &cpu_time, &cpu_pc, &cpu_dest, &cpu_addr, &cpu_data);
            }
        }
        if (valid_cpu && valid_mars) {
            // Compare Diff
            if (mars_pc != cpu_pc || mars_dest != cpu_dest || mars_addr != cpu_addr || mars_data != cpu_data) {
                printf("!! Different Occured!\n");
                printf("Mars at Line %4d: %s\n", mars_lineid, mars_line);
                printf("CPU  at Line %4d: %s\n", cpu_lineid, cpu_line);
                judge_result = false;
            }
        }
        else if (!valid_cpu && !valid_mars){
            break;
        }
        else {
            if (valid_mars) {
                printf("Output Less Than Needed!\n");
            }
            else {
                printf("Output More Than Needed!\n");
            }
            judge_result = false;
        }
        flg_mars = (my_gets(mars_line, fin_mars) != NULL); 
        flg_cpu = (my_gets(cpu_line, fin_cpu) != NULL);
    }

    if (judge_result) {
        printf("\n\nAccepted\n");
    }
    else {
        printf("\n\nWrong Answer\n");
    }
    return 0;
}
