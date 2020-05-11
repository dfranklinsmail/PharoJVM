internal
constShort: anInteger
	doWide ifTrue: [
		code nextPut: (anInteger bitAnd: 16rff00) >> 8.
		code nextPut: (anInteger bitAnd: 16rff).		
	] ifFalse: [
		code nextPut: anInteger.
	]