# PrimeGenerator Benchmark

This benchmark iterates over all natural numbers up to 1'000'000 and uses a brute-force method to filter out prime numbers.

My test results from a quick run on my thinkpad:


| Program   | Execution time [s] |
| --------- | :----------------: |
| Godot 3.2 |       10.233       |
| Python3   |       4.685        |
| PyPy3     |       1.055        |

------

### Conclusions

Godot doesn't quite reach the speed of CPython. However it is "only" about 2x slower.

As PyPy shows, a JIT could potentially speed up the execution by a factor of 10x.