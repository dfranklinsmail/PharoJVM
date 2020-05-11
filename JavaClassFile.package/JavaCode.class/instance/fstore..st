instruction adding
fstore: anInteger
	anInteger <= 3 ifTrue: [
		code nextPut: 67 + anInteger.
		^ self
	].
	code nextPut: 56.
	self constShort: anInteger