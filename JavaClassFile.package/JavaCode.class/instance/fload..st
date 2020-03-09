instruction adding
fload: anInteger
	anInteger <= 3 ifTrue: [
		self pushInstruction: 34 + anInteger.
		^ self
	].
	self
		checkWide: anInteger;
		pushInstruction: 23;
		constShort: anInteger;
		endWide.
