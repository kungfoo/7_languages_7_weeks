MatrixTest := UnitTest clone do(
	testDim := method(
		matrix := Matrix dim(1,2)
		assertEquals(1, matrix width)
		assertEquals(2, matrix height)
		matrix := Matrix dim(10,20)
		assertEquals(10, matrix width)
		assertEquals(20, matrix height)
	)
	
	testSet := method(
		matrix := Matrix dim(5,4)
		matrix set(2,2,101)
		assertEquals(matrix get(2,2), 101)
	)
	
	testTranspose := method(
		fail("Implement transpose")
	)
)

MatrixTest run