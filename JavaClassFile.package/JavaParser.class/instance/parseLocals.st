parsing
parseLocals
	| result |
	result := OrderedCollection new.
	[ self skipWhitespace.
		source peek isLetter
	] whileTrue: [
		result add: self parseIdentifier
	].
	^ result