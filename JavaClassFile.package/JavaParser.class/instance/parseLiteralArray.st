parsing
parseLiteralArray
	| elements result |
	source next.
	elements := OrderedCollection new.
	result := JavaArray new value: elements;start: self skipWhitespace.
	[ true	] whileTrue: [
		self skipWhitespace.
		source peek switch
			case: $) do: [ source next. ^ result end: source position ];
			case: nil do: [ self error: 'expected character: ) in expression' ];
			otherwise: [ elements add: self parseLiteral ]
	].
