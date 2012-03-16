HelloWorldTest := UnitTest clone do(
	setUp := method(
		super(setUp)
		"setting up" println
	)
	
	testHelloWorld := method(
		a := "asdf"
		b := "asdf"
		assertEquals(a,b)
	)
)

HelloWorldTest run