
#include <algorithm>
#include <chrono>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <vector>

using Clock = std::chrono::steady_clock;
using Nanoseconds = std::chrono::duration<double, std::nano>;

constexpr std::size_t SAMPLE_COUNT = 10001;
constexpr int WARMUP_ROUNDS = 5;

volatile std::uint64_t sink = 0;

struct Statistics {
    double minimum;
    double p50;
    double p90;
    double p99;
    double maximum;
};

std::uint64_t run_workload(std::size_t iterations,
                           std::uint64_t initial_value) {
    std::uint64_t value = initial_value;

    for (std::size_t i = 0; i < iterations; ++i) {
        value = value * 3 + 1;
    }

    return value;
}

Statistics calculate_statistics(std::vector<double> values) {
    std::sort(values.begin(), values.end());

    const std::size_t last = values.size() - 1;

    return {
        values.front(),
        values[static_cast<std::size_t>(0.50 * last)],
        values[static_cast<std::size_t>(0.90 * last)],
        values[static_cast<std::size_t>(0.99 * last)],
        values.back()
    };
}

void print_statistics(const Statistics& stats) {
    std::cout << std::fixed << std::setprecision(2)
              << "Minimum: " << stats.minimum << " ns/iteration\n"
              << "p50    : " << stats.p50 << " ns/iteration\n"
              << "p90    : " << stats.p90 << " ns/iteration\n"
              << "p99    : " << stats.p99 << " ns/iteration\n"
              << "Maximum: " << stats.maximum << " ns/iteration\n";
}

int main() {
    const std::vector<std::size_t> batch_sizes = {100, 1000, 10000};

    std::cout << "Dependent arithmetic benchmark\n"
              << "Samples per batch size: " << SAMPLE_COUNT << '\n';

    for (const std::size_t batch_size : batch_sizes) {
        for (int i = 0; i < WARMUP_ROUNDS; ++i) {
            sink = run_workload(batch_size, 10 + i);
        }

        std::vector<double> times;
        times.reserve(SAMPLE_COUNT);

        for (std::size_t sample = 0; sample < SAMPLE_COUNT; ++sample) {
            const std::uint64_t initial_value = 10 + sample;

            const auto start = Clock::now();
            const std::uint64_t result =
                run_workload(batch_size, initial_value);
            const auto end = Clock::now();

            sink = result;

            const double elapsed_ns =
                Nanoseconds(end - start).count();

            times.push_back(
                elapsed_ns / static_cast<double>(batch_size));
        }

        std::cout << "\nBatch size: " << batch_size
                  << " (average ns per iteration)\n";

        print_statistics(calculate_statistics(std::move(times)));
    }

    std::cout << "\nFinal sink value: " << sink << '\n';

    return 0;
}
