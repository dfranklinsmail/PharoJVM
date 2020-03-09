reading
checkConstantPool: pool
	ref1 isInteger ifTrue: [ref1 := pool at: ref1].
	ref2 isInteger ifTrue: [ref2 := pool at: ref2].
