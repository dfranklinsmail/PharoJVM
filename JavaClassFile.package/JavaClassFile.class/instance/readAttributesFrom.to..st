reading
readAttributesFrom: s to: attrs
	| n |
	s uint16 timesRepeat: [| attribute |
		attribute := JavaAttribute from: (constantPool at: s uint16).
		n := s uint32.
		attribute contents: (s next: n).
		(self shouldReadAttribute: attribute) ifTrue: [
			attrs add: attribute.
		]
	].
