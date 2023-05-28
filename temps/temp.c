#include <stdio.h>
#include <stdlib.h>

typedef int NB;
#define NBS "%d"

#define pf printf
#define pn(a) pf(NBS"\n", a)
#define pnc(a) pf("%c", a)
#define sf scanf
#define sn(x) scanf(NBS, x)
#define sfc(x) scanf(" %c", x)
#define so(x) sizeof(x)
#define len(x) so(x)/so(*x)
#define fr(i, x) for(NB i = 0; i < x; ++i)

void _pns(NB n, NB *p){if(n == 1)pn(*p);else {pf(NBS" ", *p);_pns(n-1, p+1);}}
#define pns(a1,...) {NB _a[]={a1, __VA_ARGS__}; _pns(len(_a), _a);}while(0)

NB SN_S, SN_L;
void _sns(NB n, NB **p){SN_L = sn(*p); if(SN_L <= 0) return; SN_S += SN_L; if(n > 1) _sns(n-1, p+1);}
#define sns(a1,...) {NB *_a[]={a1, __VA_ARGS__}; SN_S = 0; _sns(len(_a), _a);}while(0)

NB cmp(const void * ap, const void * bp){
    NB a = *(const NB *)ap;
    NB b = *(const NB *)bp;
    return (a > b) - (a < b);
}


int main(void){
    return 0;
}

