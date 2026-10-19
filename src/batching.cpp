#include <algorithm>
#include <chrono>
#include <cstddef>
#include <iomanip>
#include <iostream>
#include <string>
#include <vector>

using namespace std;
using Clock = chrono::steady_clock;
using Nanoseconds = chrono::nanoseconds;

constexpr size_t SAMPLE_COUNT = 10001;

volatile int sink = 0;
struct Statistics
{
    double minimum, p50, p90, p99, maximum;
};
Statistics calculate_stats(vector<double> vals)
{
    sort(vals.begin(), vals.end());
    const size_t sz = vals.size()-1;
    return {
        vals.front(), 
        vals[static_cast<size_t>(0.5*sz)],
        vals[static_cast<size_t>(0.9*sz)],
        vals[static_cast<size_t>(0.99*sz)],
        vals.back()
        };
}

void print_stats(const string& label, const Statistics& s)
{
    cout << label << "\n"
         << "minimum: " << s.minimum << " ns\n"
         << "p50    : " << s.p50     << " ns\n"
         << "p90    : " << s.p90     << " ns\n"
         << "p99    : " << s.p99     << " ns\n"
         << "maximum: " << s.maximum << " ns\n"
         << endl;

}

int main() 
{
    cout << fixed << setprecision(2);
    vector<double> overhead(SAMPLE_COUNT);
    
    for (size_t i = 0; i < SAMPLE_COUNT; ++i)
    {
        const auto start = Clock::now();
        const auto end = Clock::now();
        overhead[i] = chrono::duration_cast<Nanoseconds>(end-start).count();
    }

    print_stats(
                "Time overhead, between 2 clock reads",
                calculate_stats(overhead)
    );

    const vector<size_t> batch_sizes = {100, 1000, 10000};

    for (const size_t batch_size : batch_sizes)
    {
        vector<double> times(SAMPLE_COUNT);
        for (size_t i = 0; i < SAMPLE_COUNT; ++i)
        {
            int x = 10;
            const int y = 20;
            const auto start = Clock::now();
            for (size_t j = 0; j < batch_size; ++j)
            {
                sink = x * y;
                ++x;
            }
            const auto end = Clock::now();
            const double elapsed = chrono::duration_cast<Nanoseconds>(end-start).count();
            times[i] = elapsed / static_cast<double>(batch_size);
        }
        print_stats(
                    "Batch size: " + to_string(batch_size) + " (average ns per iteration)",
                    calculate_stats(times)
        );
    }

    cout << "final sink value: " << sink << "\n";
    return 0;
}
