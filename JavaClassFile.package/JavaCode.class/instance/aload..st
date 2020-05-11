instruction adding
aload: anInteger
	anInteger <= 3 ifTrue: [
		self pushInstruction: 42 + anInteger.
		^ self
	].
	self
		pushInstruction: 25;
		constShort: anInteger