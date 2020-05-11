parsing
parseNumber
	| n base pointCase radixCase fraction start |
	base := 10.
	n := 0.
	pointCase := $..
	radixCase := $r.
	fraction := 0.
	start := self skipWhitespace.
	[ | v |
		source peek ifNil: [ ^ (JavaNumber value: n) start: start end: source position ].
		v := source next asLowercase.
		v switch
			case: radixCase do: [
				base := n.
				n := 0.
				radixCase := nil.
				(self validDigit: source peek base: base) < 0 ifTrue: [self error: 'r must be followed by digit'].
				true
			];
			case: pointCase do: [
				pointCase := radixCase := nil.
				fraction := 1.0 / base.
				(self validDigit: source peek base: base) >= 0 or: [source back.false]
			];
			if: #isAlphaNumeric do: [
				v := self validDigit: v base: base.
				v >= 0 ifTrue: [
					fraction = 0 ifTrue: [
							n := n * base + v.
						] ifFalse: [
							n := v * fraction + n.
							fraction := fraction / base
						].
					true
				] ifFalse: [
					source back.
					false
			]];
			otherwise: [source back.false]
	] whileTrue.
	^ (JavaNumber value: n) start: start end: source position