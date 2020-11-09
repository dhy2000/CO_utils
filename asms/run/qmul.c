typedef long long ll;
ll qmul(ll a, ll b) {
    ll sum = 0;
    while (b) {
        if (b & 1) {
            sum = (sum + a);
        }
        a = a + a;
        b >>= 1;
    }
    return sum;
}