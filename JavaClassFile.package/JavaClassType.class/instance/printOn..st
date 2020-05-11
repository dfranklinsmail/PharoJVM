printing
printOn: aStream
	super printOn: aStream.
	self isInstance ifFalse: [ aStream << $*].
	aStream <<$(.
	javaClass printOn: aStream.
	aStream <<$).
