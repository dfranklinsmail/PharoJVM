parsing
parseLiteralAny
	| start |
	start := self skipWhitespace.
	^ source peek switch
		case: $# do: [
			source next.
			source peek = $( ifTrue: [
				self parseLiteralArray
			] ifFalse: [
				self parseSymbol
		]];
		case: $' do: [self parseString];
		case: $$ do: [source next. (JavaCharacter value: source next) start: start end: source position];
		case: $: do: [(JavaSymbol value: source next) start: start end: source position];
		case: $; do: [(JavaSymbol value: source next) start: start end: source position];
		case: $= do: [(JavaSymbol value: source next) start: start end: source position];
		otherwise: [ self parseSymbol ]