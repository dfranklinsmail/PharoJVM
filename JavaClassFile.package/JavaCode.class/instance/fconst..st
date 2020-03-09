instruction adding
fconst: aFloat
	aFloat isZero ifTrue: [ self pushInstruction: 11 ].
	aFloat = 1.0 ifTrue: [ self pushInstruction: 12 ].
	aFloat = 2.0 ifTrue: [ self pushInstruction: 13 ].
	self ldc: (constantPool makeFloat: aFloat).
