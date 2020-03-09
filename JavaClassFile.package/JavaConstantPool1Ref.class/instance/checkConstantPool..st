reading
checkConstantPool: pool
	ref1 isInteger ifTrue: [ref1 := pool at: ref1].
