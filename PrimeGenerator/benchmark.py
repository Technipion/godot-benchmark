import math
import time


def run_benchmark():
	time_start = time.perf_counter()
	primes = []

	for i in range(1000000):
		if is_prime(i):
			primes.append(i)

	numbers_found = len(primes)

	time_end = time.perf_counter()
	time_elapsed = time_end - time_start

	template = 'Number of primes found: {:d}\nTime stopped: {:f} seconds'
	print(template.format(numbers_found, time_elapsed))


def is_prime(n: int) -> bool:
	for i in range(2, int(math.sqrt(n)) + 1):
		if n % i == 0:
			return False

	return True


if __name__ == '__main__':
    run_benchmark()
