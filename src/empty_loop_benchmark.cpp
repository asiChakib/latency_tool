#include <chrono>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;
using Clock = chrono::steady_clock;

constexpr size_t SAMPLE_COUNT = 10001;

struct Statistics {
    double minimum;
    double p50;
    double p90;
    double p99;
    double maximum;
};

Statistics calculate_statistics(vector<double> values) {
    sort(values.begin(), values.end());

    const size_t last = values.size() - 1;

    return {
        values.front(),
        values[static_cast<size_t>(0.50 * last)],
        values[static_cast<size_t>(0.90 * last)],
        values[static_cast<size_t>(0.99 * last)],
        values.back()
    };
}

void print_statistics(const Statistics& s) {
    cout << fixed << setprecision(2);
    cout << "Minimum: " << s.minimum << " ns/iteration\n";
    cout << "p50    : " << s.p50 << " ns/iteration\n";
    cout << "p90    : " << s.p90 << " ns/iteration\n";
    cout << "p99    : " << s.p99 << " ns/iteration\n";
    cout << "Maximum: " << s.maximum << " ns/iteration\n";
}

int main() {
    const vector<size_t> batch_sizes = {100, 1000, 10000};

    for (size_t batch_size : batch_sizes) {
        vector<double> times(SAMPLE_COUNT);

        for (size_t i = 0; i < SAMPLE_COUNT; ++i) {
            const auto start = Clock::now();

            for (size_t j = 0; j < batch_size; ++j) {
                // empty for testing
            }

            const auto end = Clock::now();

            const double elapsed_ns =
                chrono::duration<double, nano>(end - start).count();

            times[i] = elapsed_ns / static_cast<double>(batch_size);
        }

        cout << "\nBatch size: " << batch_size
             << " (average ns per iteration)\n";

        print_statistics(calculate_statistics(times));
    }
}