type inference
rangeCheck: low to: high
	min < low ifTrue: [ ^ false ].
	max > high ifTrue: [ ^ false ].
	isFloat ifTrue: [ ^ low isFloat ].
	^ true