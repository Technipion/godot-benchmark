extends Control



func _ready():
	pass



func _on_Button_pressed():
	run_benchmark()



func run_benchmark():
	var time_start = OS.get_ticks_usec()
	var primes = []
	
	for i in range(1000000):
		if is_prime(i):
			primes.append(i)
	
	var numbers_found = len(primes)
	
	var time_end = OS.get_ticks_usec()
	var time_elapsed = (time_end - time_start) / 1000000.0
	
	var template = 'Number of primes found: %d\nTime stopped: %f seconds\n\n'
	$VBoxContainer/Label.text += template % [numbers_found, time_elapsed]


func is_prime(n: int) -> bool:
	for i in range(2, int(sqrt(n)) + 1):
		if n % i == 0:
			return false
	
	return true
