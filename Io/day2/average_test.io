doFile("average.io")

AverageTest := UnitTest clone do(
	testAverageWorksWithNumbers := method(
		assertEquals(3, list(1,2,3,4,5) myAverage)
	)
	
	testAverageIsZeroWhenListIsEmpty := method(
		assertEquals(0, list() myAverage)
	)
	
	testAverageThrowsWhenNotAllArgumentsAreNumbers := method(
		threw := false
		e := try(list(1,2,3,"17") myAverage)
		e catch(Exception, threw = true)
		if(threw not, fail("Should have thrown an Exception, but did not!"))
	)
)

AverageTest run