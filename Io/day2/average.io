List myAverage := method(
	if(self size == 0, return 0)
	if(self detect(item, (item type) != Number type) == nil,
		self sum / self size
	,
		Exception raise("Not all list elements are Numbers")
	)
)