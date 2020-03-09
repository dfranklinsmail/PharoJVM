parsing
parseLiteral
	^ source peek switch
		if: #isLetter do: [ self parseSymbol ];
		if: #isDigit do: [self parseNumber];
		case: $( do: [self parseLiteralArray ]; 
		otherwise: [self parseLiteralAny]