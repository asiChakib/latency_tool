#include <bits/stdc++.h>
#include <iostream>
#include <chrono>
#include <thread>
#include <climits>

using namespace std;

int main()
{
    int x{10}, y{20};
    int result = 1;
    vector<long long> times(10001, 0);
    
    size_t sz = times.size();
    
    auto start = std::chrono::steady_clock::now();
    for (size_t i = 0; i < sz; ++i)
    {
        result = x * y;
    }
    auto end = std::chrono::steady_clock::now();
    auto elapsed = end - start;
    auto average = elapsed/sz;
    for (size_t i = 0; i < sz; i++)
    {
        times[i] = std::chrono::duration_cast<std::chrono::nanoseconds>(average).count();
    }
    sort(times.begin(), times.end());

    long long min = times[0], max = times[sz-1], median = times[(sz-1)/2];

    size_t p90 = 0.9*(sz-1), p99 = 0.99*(sz-1), p99_9 = 0.999*(sz-1);

    cout << "elapsed: " << std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed).count() << endl;
    cout << "minimum: " << min << "ns\n"
         << "maximum: " << max << "ns\n"
         << "p50: " << median << "ns\n" 
         << "p90: " << times[p90] << "ns\n"
         << "p99: " << times[p99] << "ns\n"
         << "p99.9: " << times[p99_9] << "ns\n"
         << endl;

    return 0;
}
