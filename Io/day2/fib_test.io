FibTest := UnitTest clone do(
	withFibFile := method(file,
		doFile(file)
		self
	)
		
	testBaseCases := method(
		assertEquals(1, fib(1))
		assertEquals(1, fib(2))
	)
	
	testFurtherCases := method(
		assertEquals(2, fib(3))
		assertEquals(3, fib(4))
		assertEquals(5, fib(5))
		assertEquals(8, fib(6))
		assertEquals(10946, fib(21))
	)
)

FibTest withFibFile("fib_rec.io") run
FibTest withFibFile("fib_it.io") run