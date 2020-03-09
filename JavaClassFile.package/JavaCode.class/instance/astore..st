instruction adding
astore: anInteger
	anInteger <= 3 ifTrue: [
		self popInstruction: 75 + anInteger.
		^ self
	].
	self popInstruction: 58.
	self constShort: anInteger