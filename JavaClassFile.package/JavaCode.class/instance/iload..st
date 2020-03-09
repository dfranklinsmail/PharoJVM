instruction adding
iload: anInteger
	anInteger <= 3 ifTrue: [
		self pushInstruction: 26 + anInteger.
		^ self
	].
	self
		checkWide: anInteger;
		pushInstruction: 21;
		constShort: anInteger;
		endWide.
