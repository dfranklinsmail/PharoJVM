parsing
skipWhitespace
	[ source peek switch
		case: $  do: [ source next. true ];
		case: $	 do: [ source next. true ];
		case: Character cr do: [ source next. true];
		case: Character lf do: [ source next. true ];
		case: $" do: [
				source next.
				[ source peek = $" ] whileFalse: [ source next ].
				source next.
				true
			];
		otherwise: false
	] whileTrue.
	^ source position + 1