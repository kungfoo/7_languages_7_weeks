doFile("flat_sum.io")

FlatSumTest := UnitTest clone do(
	testEmptyListSum := method(
		assertEquals(nil, (list(list(), list()) flatSum))
	)
	
	testOneListSum := method(
		assertEquals(5, list(list(3,1,1)) flatSum)
	)
	
	testSeveralListsSum := method(
		assertEquals(10, list(list(1), list(2), list(3,4)) flatSum)
	)
)

FlatSumTest run