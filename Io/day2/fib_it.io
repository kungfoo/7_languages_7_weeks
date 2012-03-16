fib := method(i,
	a := 1
	b := 1
	result := 1
	while(i > 2,
		result = a + b
		a = b
		b = result
		i = i - 1
	)
	return result
)
