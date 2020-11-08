#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXN 1000005
typedef long long ll;

int n = 0;
ll rev = 0;
int arr[MAXN], tmp[MAXN];

void merge(int l, int mid, int r) {
    int i = l, j = mid + 1, k = l;
    while (i <= mid && j <= r) {
        if (tmp[i] <= tmp[j])
            arr[k++] = tmp[i++];
        else 
            arr[k++] = tmp[j++], rev += 1LL * mid - i + 1;
    }
    while (i <= mid) arr[k++] = tmp[i++];
    while (j <= r) arr[k++] = tmp[j++];
    return ;
}

void mergesort(int l, int r) {
    if (l >= r) return ;
    int mid = ((l + r) >> 1);
    mergesort(l, mid);
    mergesort(mid + 1, r);
    for (int i = l; i <= r; i++) {
        tmp[i] = arr[i];
    }
    merge(l, mid, r);
}

int main()
{
    while (scanf("%d", &n) != EOF) {
        memset(arr, 0, sizeof(arr));
        memset(tmp, 0, sizeof(tmp));
        rev = 0;
        for (int i = 0; i < n; i++) {
            scanf("%d", &arr[i]);
        }
        mergesort(0, n - 1);
        printf("%lld\n", rev);
    }
    return 0;
}
