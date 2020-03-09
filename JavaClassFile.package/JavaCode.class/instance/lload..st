instruction adding
lload: anInteger
	anInteger <= 3 ifTrue: [
		self push2Instruction: 30 + anInteger.
		^ self
	].
	self
		checkWide: anInteger;
		push2Instruction: 22;
		constShort: anInteger;
		endWide.
