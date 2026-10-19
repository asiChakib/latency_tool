
#include <bits/stdc++.h>
#include <chrono>

using namespace std;
using Clock = chrono::steady_clock;

constexpr size_t SAMPLES = 10001;

void printStats(const string& name, vector<double>& times)
{
    sort(times.begin(), times.end());

    size_t n = times.size();

    cout << fixed << setprecision(3);
    cout << "\n" << name << "\n";
    cout << "minimum: " << times.front() << " ns\n";
    cout << "p50    : " << times[(n - 1) / 2] << " ns\n";
    cout << "p90    : " << times[static_cast<size_t>(0.90 * (n - 1))] << " ns\n";
    cout << "p99    : " << times[static_cast<size_t>(0.99 * (n - 1))] << " ns\n";
    cout << "maximum: " << times.back() << " ns\n";
}

int main()
{
    // 1. Measure empty-interval overhead
    vector<double> overhead(SAMPLES);

    for (size_t i = 0; i < SAMPLES; ++i)
    {
        auto start = Clock::now();
        auto end = Clock::now();

        overhead[i] = chrono::duration_cast<chrono::nanoseconds>(
            end - start
        ).count();
    }

    printStats("Timer overhead", overhead);

    // 2. Compare different batch sizes
    const size_t batchSizes[] = {100, 1000, 10000};

    for (size_t batchSize : batchSizes)
    {
        vector<double> times(SAMPLES);

        int y = 20;
        volatile int result = 0;

        for (size_t i = 0; i < SAMPLES; ++i)
        {
            int x = 10;

            auto start = Clock::now();

            for (size_t j = 0; j < batchSize; ++j)
            {
                result = x * y;
                ++x;
            }

            auto end = Clock::now();

            double elapsed = static_cast<double>(
                chrono::duration_cast<chrono::nanoseconds>(
                    end - start
                ).count()
            );

            times[i] = elapsed / static_cast<double>(batchSize);
        }

        // Keep result observable outside the timed region.
        cout << "\nFinal result: " << result << "\n";

        printStats(
            "Batch size: " + to_string(batchSize) + " (ns/op)",
            times
        );
    }

    return 0;
}
