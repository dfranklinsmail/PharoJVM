parsing
parseIdentifier
	| start |
	start := self skipWhitespace.
	source peek isLetter ifFalse: [ self error: 'missing identifier' ].
	^ (JavaIdentifier named: (String << [: s |
			[source peek isAlphaNumeric] whileTrue: [s << source next].
		]))
		start: start end: source position