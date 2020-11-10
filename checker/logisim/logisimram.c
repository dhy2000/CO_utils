#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned int ui;
typedef long long ll;
typedef unsigned long long ull;

#define IS_DECNUM(_x) (((_x)>='0'&&(_x)<='9'))
#define IS_HEXNUM(_x) (((_x)>='0'&&(_x)<='9')||((_x)>='a'&&(_x)<='f'))

#define HEX2INT(_c) (((_c)>='0'&&(_c)<='9')?((_c)-'0'):((_c)-'a'+10))
#define INT2HEX(_x) ((_x)<10?((_x)+'0'):((_x)-10+'a'))

void print_hex(ui x) {
    ui mask = (0xF0000000);
    ui bitcnt = 28;
    ui digit = 0;
    while (mask) {
        digit = x & mask;
        digit >>= bitcnt;
        putchar(digit < 10 ? digit + '0' : digit - 10 + 'a');
        mask >>= 4;
        bitcnt -= 4;
    }
    putchar(10);
}


char line[1000005];
int main()
{
    // use re-direct to give input
    // freopen("mem.in", "r", stdin);
    char ch, last_ch = 0;
    // print_hex(0xbaadf00d);
    while ((ch = getchar())!=EOF && ch != '\n'); // skip the first line
    ui dec = 0, hex = 0, flg = 0;
    while ((ch = getchar()) != EOF) {
        // printf("%d:", (int)ch);
        if (!IS_HEXNUM(ch) && ch != '*') {
            if (IS_HEXNUM(last_ch)) {
                if (flg != 1) print_hex(hex);
                else {
                    for (int i = 0; i < dec; i++) print_hex(hex);
                }
            }
            last_ch = ch;
            dec = 0, hex = 0, flg = 0;
            continue;
        }
        else {
            if (ch == '*') {
                flg = 1;
                hex = 0;
            }
            else {
                if (IS_DECNUM(ch)) {
                    hex = (hex << 4) + HEX2INT(ch);
                    if (flg == 0)
                        dec = (dec << 3) + (dec << 1) + (ch - '0');
                }
                else if (IS_HEXNUM(ch)) {
                    if (flg == 0) flg = 2;
                    hex = (hex << 4) + HEX2INT(ch);
                }
                else {

                }
            }
            last_ch = ch;
        }
    }
    return 0;
}