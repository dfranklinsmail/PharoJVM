instruction adding
ldc: anObject
	anObject is2Words ifTrue: [
		^ 	self
			push2Instruction: 20;
			cpIndex: anObject cpIndex.
	].
	anObject cpIndex > 255 ifTrue: [
		^ 	self
			pushInstruction: 19;
			cpIndex: anObject cpIndex.
	].
	self
		pushInstruction: 18;
		cpIndexShort: anObject.
