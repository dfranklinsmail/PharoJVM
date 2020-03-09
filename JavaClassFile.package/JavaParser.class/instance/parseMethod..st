parsing
parseMethod: aBoolean
	| body |
	parsing := 'method'.
	method := JavaMethod new
		instanceSide: aBoolean;
		start: self skipWhitespace;
		header: (self parseMessageWith: #parseIdentifier).
	body := self parseStatementsEndingWith: nil.
	(body isEmpty or: [ body last isReturn not ])
		ifTrue: [ body add: JavaReturn new ].
	^ method
		body: body;
		end: source position