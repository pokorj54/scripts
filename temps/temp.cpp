#include <bits/stdc++.h>

using namespace std;

using ll = long long int;
using ld = long double;
using vll = vector<ll>;

#define fr(i, x) for(ll i = 0; i < (x); ++i)

template <typename T>
vector<T> load(ll n){
	vector<T> r (n);
	fr(i, n) cin >> r[i];
	return r;
}

void solve(){

}

int main(void){
	ios_base::sync_with_stdio(0); cin.tie(0);
	cin.exceptions(cin.failbit);
	cout<<setprecision(9)<<fixed;
	ll t = 1;
	cin >> t;
	fr(i, t){
		solve();
	}
	return 0;	
}
