parsing
parseBlock
	| block |
	block := JavaMethod new
		instanceSide: true;
		start: source position.
	self expect: $[;
			skipWhitespace.
	block
			header: self parseBlockParameters;
			body: (self parseStatementsEndingWith: $]);
			end: source position.
	^ JavaBlockClosure new instanceMethod: block