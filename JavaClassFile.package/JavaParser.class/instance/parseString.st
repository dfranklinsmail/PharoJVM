parsing
parseString
	| start |
	source next.
	start := source position.
	^ (JavaString value: (String streamContents: [: s |
			[ source peek = $' ifTrue: [
					source next.
					source peek ~= $'
				] ifFalse: [
					false
			]] whileFalse: [
					s nextPut: source next
			]])) start: start end: source position