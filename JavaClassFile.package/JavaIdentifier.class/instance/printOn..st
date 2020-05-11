printing
printOn: aStream
	aStream nextPutAll: name.
	type ifNotNil: [
		aStream nextPutAll: ' : '.
		type printOn: aStream.
	].
