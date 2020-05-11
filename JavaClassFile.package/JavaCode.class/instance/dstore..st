instruction adding
dstore: anInteger
	anInteger <= 3 ifTrue: [
		self pop2Instruction: 71 + anInteger.
		^ self
	].
	self
		checkWide: anInteger;
		pop2Instruction: 57;
		constShort: anInteger;
		endWide.
