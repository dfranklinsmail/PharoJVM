reading
readFromCLassfile: s constantPool: pool
	ref1 := pool ref: (self cpIndexFrom: s).
	ref2 := pool ref: (self cpIndexFrom: s).
