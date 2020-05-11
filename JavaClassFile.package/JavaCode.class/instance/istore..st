instruction adding
istore: anInteger
	anInteger <= 3 ifTrue: [
		code nextPut: 59 + anInteger.
		^ self
	].
	code nextPut: 54.
	self constShort: anInteger