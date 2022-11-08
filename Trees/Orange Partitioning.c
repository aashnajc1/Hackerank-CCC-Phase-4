#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int n;
    cin>>n;
    int orange[n];
    for(int i=0;i<n;i++)
    {
        cin>>orange[i];
    }
    int k=0;
    for(int i=0;i<n;i++)
    {
        if(orange[i]<=orange[n-1]){
            swap(orange[i],orange[k]);
            k++;
        }
     }
    for(int i=0;i<n;i++)
    {
        cout<<orange[i]<<" ";
    }
    return 0;
}
