parsing
parseMessageSelector: colonLimit
	| colonCount str nameOK specialOK savedPosition colonPosition |
	colonCount := colonLimit.
	nameOK := colonLimit >= 0.
	specialOK := colonLimit < 0 | (colonLimit >= 1).
	self skipWhitespace.
	colonPosition := savedPosition := source position.
	str := String << [: s |
		[ source peek switch
			if: #isAlphaNumeric and: nameOK do: [
				s nextPut: source next.
				specialOK := false.
				true
			];
			case: $: and: [nameOK and: [s isEmpty not]] do: [
				s nextPut: source next.
				colonPosition := source position.
				(colonCount := colonCount - 1) > 0
			];
			if: specialOK and: [:char| '+-*/~|,<>=&@?\%' includes: char ] do: [
				s nextPut: source next.
				nameOK := false.
				true
			];
			otherwise: 
				false
		] whileTrue].
	colonPosition ~= savedPosition ifTrue: [
		colonLimit <= 0 ifTrue: [
			source position: savedPosition.
			^ ''
		].
		colonPosition ~= source position ifTrue: [
			str := str first: colonPosition - savedPosition.
			source position: colonPosition.
		].
	].
	^ str