parsing
parseStatementsEndingWith: ending
	| statements allowedMore start allowedLocals locals |
	statements := OrderedCollection new.
	allowedMore := true.
	allowedLocals := true.
	[ start := self skipWhitespace.
		allowedMore and: [ ending ~= source peek ]
	] whileTrue: [
		source peek switch
			case: $. do: [
				source next.
				allowedLocals := false.
			];
			case: $^ do: [ | exp |
				source next.
				exp := self parseExpression.
				statements add: ((JavaReturn new with: exp) start: start end: exp end).
				allowedMore := false
			];
			case: $| do: [
				allowedLocals ifFalse: [ self error: 'Local variables only at beginning of method or block' ].
				self expect: $|.
				locals := self parseLocals.
				self expect: $|.
			];
			otherwise: [ statements add: self parseExpression ].
		allowedLocals := false.
	].
	self
		skipWhitespace;
		expect: ending.
	^ statements