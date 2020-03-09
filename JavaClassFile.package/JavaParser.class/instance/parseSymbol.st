parsing
parseSymbol
	| start |
	start := source position.
	^ (source peek = $' ifTrue: [
			self parseString
		] ifFalse: [
			self parseMessageSelector: 1000
		]) asJavaSymbol start: start end: source position