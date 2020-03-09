instruction adding
dconst: aFloat
	aFloat isZero ifTrue: [ ^ self push2Instruction: 14 ].
	aFloat = 1.0 ifTrue: [ ^ self push2Instruction: 15 ].
	self ldc: (constantPool makeDouble: aFloat).
self flag: #shouldBeLdc2