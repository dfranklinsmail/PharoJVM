parsing
parseExpressionBasic
	self skipWhitespace.
	^ source peek switch
		if: #isLetter do: [self parseIdentifier];
		if: #isDigit do: [self parseNumber];
		case: $( do: [self parseParenExpression]; 
		case: $[ do: [self parseBlock];
		case: nil do: nil;
		otherwise: [ self parseLiteralAny ]
