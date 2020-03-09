parsing
parseBlockParameters
	| messageName arguments start |
	messageName := ''.
	arguments := OrderedCollection new.
	start := self skipWhitespace.
	[
		self skipWhitespace.
		source peek = $:
	] whileTrue: [
		source next.
		self skipWhitespace.
		arguments add: self parseIdentifier.
		messageName := messageName,'value:'
	].
	arguments isEmpty ifTrue: [
		messageName := #value
	] ifFalse: [
		source peek = $| ifTrue: [
			source next.
		] ifFalse: [
			self error: 'Expected "|"'
	]].
	^ (JavaMessage new selector: messageName asSymbol arguments: arguments) start: start end: source position