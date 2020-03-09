type inference
value: aNumber
	min > aNumber ifTrue: [ min := aNumber ].
	max < aNumber ifTrue: [ max := aNumber ].
	(aNumber isKindOf: Float) ifTrue: [ isFloat := true ]