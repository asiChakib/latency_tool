# C++ Latency Benchmarking Tool

A lightweight C++ benchmark exploring dependent arithmetic operations, compiler optimizations, and latency measurement using `std::chrono::steady_clock`.

The project compares the performance of the same workload compiled with different GCC optimization levels, analyzes the generated assembly, and uses percentile statistics to study measurement variability.

## Project Structure

```text
latency_tool/
├── src/
│   └── cpp files
├── assembly/
│   └── assembly generated files
├── bin/
│   ├── excutables (empty) (use run.sh to generate executables)
├── README.md
└── run.sh
```

## Objectives

- Measure the average execution time per iteration of a dependent arithmetic workload.
- Compare GCC optimization levels `-O0`, `-O1`, and `-O2`.
- Collect latency distributions using minimum, p50, p90, p99, and maximum values.
- Investigate compiler transformations by inspecting generated assembly.
- Understand the impact of loop overhead, timer overhead, and system noise on microbenchmarks.

## Benchmark Workload

The benchmark repeatedly evaluates the recurrence:

\[
x_{n+1} = 3x_n + 1 \pmod {2^{64}}
\]

Each iteration depends on the result of the previous iteration, creating a loop-carried data dependency.

The benchmark uses three batch sizes:

- 100 iterations
- 1,000 iterations
- 10,000 iterations

For each batch size (in arithmetic_dependent_benchmark.cpp), it performs five warm-up runs followed by 10,001 timed samples. Each sample measures the entire workload and divides the elapsed time by the number of iterations.

All other files are used in the process of understanding a unique concept used by g++ compiler to optimize work.
For instance, batching to measure difference betweeen batch sizes, empty_loop_benchmarking for empty loop measurement before optimizing (-O0) and after (-O1 or -O2), latency_benchmarking_tool and chrono to practice performance measuring. 

Timing uses `std::chrono::steady_clock`, and the workload's result is written to a volatile sink outside the timed interval to help prevent the computation from being eliminated as unobservable work.

## Building

Requirements:

- A C++ compiler supporting C++17
- GCC, for the commands below
- A Linux environment or compatible development environment

From the repository root:

```bash
g++ -std=c++17 -O0 -Wall -Wextra -pedantic \
    src/ari_dep_bench.cpp -o bin/ari_dep_bench_O0

g++ -std=c++17 -O1 -Wall -Wextra -pedantic \
    src/ari_dep_bench.cpp -o bin/ari_dep_bench_O1

g++ -std=c++17 -O2 -Wall -Wextra -pedantic \
    src/ari_dep_bench.cpp -o bin/ari_dep_bench_O2
```
or 
```bash
# change mode to +x
./run.sh {optimization_level} -{s or o} {filename} # filename without .cpp
```

Run each version:

```bash
./bin/ari_dep_bench_O0
./bin/ari_dep_bench_O1
./bin/ari_dep_bench_O2
```

## Results

The following results were collected from one benchmark run. Values are in nanoseconds per iteration.

### Batch size: 10,000 iterations

| Metric | `-O0` | `-O1` | `-O2` |
|---|---:|---:|---:|
| Minimum | 1.20 | 0.80 | 0.80 |
| p50 | 1.21 | 0.80 | 0.80 |
| p90 | 1.39 | 0.81 | 0.81 |
| p99 | 2.98 | 1.45 | 2.65 |
| Maximum | 17.13 | 17.82 | 25.63 |

These measurements are observations from a single run, not universal performance guarantees. Results may vary with CPU architecture, compiler version, system load, and execution environment.

## Assembly Analysis

The optimized assembly was inspected using `objdump`:

```bash
objdump -d -C -Mintel bin/ari_dep_bench_O2 | less
```

The central arithmetic operation was compiled into:

```asm
lea rax, [rax + rax*2 + 0x1]
```

This computes `rax = 3 * rax + 1` in one instruction. The disassembly also retains the loop counter increment, comparison, and conditional branch.

This confirms that the dependent arithmetic loop remains in the optimized binary. It also illustrates how a compiler can transform source-level multiplication and addition into a different machine-instruction sequence.

To generate a standalone assembly file from the source:

```bash
g++ -std=c++17 -O2 -S -masm=intel \
    src/ari_dep_bench.cpp -o assembly/ari_dep_bench.s
```

## Observations

- **Compiler optimization matters:** the median for `-O1` and `-O2` was approximately 0.80 ns per iteration, compared with 1.21 ns for `-O0` at the largest batch size.
- **Higher optimization is not always measurably faster:** `-O1` and `-O2` produced the same median in this run.
- **Percentiles reveal variability:** p99 and maximum values were higher and less stable than the median, illustrating the effect of timing noise and occasional interruptions.
- **Batch size matters:** larger batches reduce the relative impact of the two clock reads on the average measured time per iteration.
- **Assembly inspection is essential:** source code alone does not establish which instructions the compiler ultimately executes.

## Limitations

This is an educational microbenchmark, not a cycle-accurate CPU instruction-latency measurement.

The reported time per iteration includes the arithmetic dependency, loop counter updates, comparisons, branches, and measurement overhead. The benchmark does not isolate the latency of the `lea` instruction.

Other limitations include:

- No explicit CPU-core pinning or frequency control.
- Potential scheduling interruptions and virtualized-environment noise.
- Results depend on the processor and compiler configuration.
- A volatile sink helps preserve observable results but does not guarantee that every source-level operation maps to a distinct machine instruction.

For more reliable comparisons, repeat runs under controlled conditions and compare distributions rather than relying on a single minimum or maximum.

## Future Improvements

- Compare dependent and independent arithmetic chains.
- Investigate CPU affinity and measurement stability.
- Compare instruction-level behavior against processor documentation or hardware performance counters.
- Automate repeated runs and export results for analysis.
- Explore cache and memory-access latency as a separate workload.

## License

No license has been specified yet. This project is for personal understanding of c++ behind the scenes computations in arithmetics.