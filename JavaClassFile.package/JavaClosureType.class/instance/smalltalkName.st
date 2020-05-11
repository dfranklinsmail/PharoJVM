accessing
smalltalkName
	^ smalltalkName ifNil: [ | size |
		size := self parameterTypes size.
		size = 0 ifTrue: [
			smalltalkName := #value
		] ifFalse: [
			smalltalkName := ''.
			size timesRepeat: [ smalltalkName := smalltalkName, 'value:' ].
		].
		smalltalkName := smalltalkName asSymbol
	]