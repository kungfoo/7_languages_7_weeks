Directory with(".") files foreach(file,
	if(file name endsWithSeq("test.io"),
		doFile(file name)
	)
)