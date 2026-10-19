#include <bits/stdc++.h>
#include <thread>
#include <chrono>

using namespace std;

int main() 
{
    int x = 10, y = 20;
    vector<double> times(10001, 0);
    int result = 1;
    size_t sz = times.size();
    vector<long long> overhead(10001);

    for (size_t i = 0; i < overhead.size(); ++i) 
    {
        auto start = std::chrono::steady_clock::now();
        auto end = std::chrono::steady_clock::now();
        overhead[i] = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();
    }

    for (size_t i = 0; i < sz; ++i)
    {
        auto start = std::chrono::steady_clock::now();
        for (size_t j = 0; j <1000; ++j)
        {
            result = x * y;
            x++;
        }
        auto end = std::chrono::steady_clock::now();
        auto elapsed = end - start;
        // cout << result << "-";
        times[i] = std::chrono::duration_cast<std::chrono::nanoseconds>(elapsed).count() / 1000.0;
    }
    // sort(times.begin(), times.end());
    // double min = times.front(), max = times.back(), median = times[sz/2];
    // cout<<endl;
    // cout << "minimum: " << min << " ns\n"
    //      << "p50    : " << median << " ns\n"
    //      << "maximum: " << max << " ns\n"
    //      << endl;

    sort(overhead.begin(), overhead.end());
    cout << "minimum: " << overhead[0] << " ns\n"
         << "maximum: " << overhead.back() << " ns\n"
         << "p50    : " << overhead[overhead.size()/2] << " ns\n"
         << "p90    : " << overhead[0.9*overhead.size()] << " ns\n"
         << "p99    : " << overhead[0.99*overhead.size()] << " ns\n"
         << endl;

    return 0;
}
