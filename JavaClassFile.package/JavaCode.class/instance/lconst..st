instruction extensions
lconst: anInteger
	(anInteger between: 0 and:  1) ifTrue: [
		self push2Instruction: 9 + anInteger.
		^ self
	].
	(anInteger between: -32768 and:  32767) ifTrue: [
		self iconst: anInteger.
		self i2l.
		^ self
	].
	self ldc: (constantPool makeLong: anInteger).
