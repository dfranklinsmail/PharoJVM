instruction extensions
iconst: anInteger
	(anInteger between: -1 and:  5) ifTrue: [
		self pushInstruction: 3 + anInteger.
		^ self
	].
	(anInteger between: -128 and:  127) ifTrue: [
		^ self bipush: anInteger
	].
	(anInteger between: -32768 and:  32767) ifTrue: [
		^ self sipush: anInteger
	].
	self ldc: (constantPool makeInteger: anInteger).
