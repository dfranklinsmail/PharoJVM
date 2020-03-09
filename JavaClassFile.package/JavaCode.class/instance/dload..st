instruction adding
dload: anInteger
	anInteger <= 3 ifTrue: [
		self push2Instruction: 38 + anInteger.
		^ self
	].
	self
		checkWide: anInteger;
		push2Instruction: 24;
		constShort: anInteger;
		endWide.
