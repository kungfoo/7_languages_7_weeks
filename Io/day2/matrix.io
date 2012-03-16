Matrix := Object clone do(
	dim := method(x,y,
		self lists := list()
		for(i, 0, x-1,
			lists append(list())
			for(j, 0, y-1,
				lists at(i) append(0)
			)
		)
		self
	)
	
	width := method(lists size)
	height := method(lists first size)
	get := method(x,y, lists at(x) at(y))
	set := method(x,y,value, lists at(x) atPut(y, value))
)