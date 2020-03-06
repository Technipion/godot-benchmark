# PrimeGenerator Benchmark

This benchmark iterates over all natural numbers up to 1'000'000 and uses a brute-force method to filter out prime numbers.

~~My test results from a quick run on my thinkpad:~~


| ~~Program~~   | ~~Execution time [s]~~ |
| ------------- | :--------------------: |
| ~~Godot 3.2~~ |       ~~10.233~~       |
| ~~Python3~~   |       ~~4.685~~        |
| ~~PyPy3~~     |       ~~1.055~~        |

I had exported the Godot benchmark with Debug symbols in a previous run. This is the now correct benchmark with Godot's export in Release mode and on a desktop pc:


| Program   | Execution time [s] |
| --------- | :----------------: |
| Godot 3.2 |       7.630        |
| Python3   |       6.153        |
| PyPy3     |       1.150        |

------

### Conclusions

~~Godot doesn't quite reach the speed of CPython. However it is "only" about 2x slower.~~

~~As PyPy shows, a JIT could potentially speed up the execution by a factor of 10x.~~

The corrected benchmark shows that Godot is almost on par with CPython. While Python is only about 20% faster, PyPy still wins with about 6.6x the speed.