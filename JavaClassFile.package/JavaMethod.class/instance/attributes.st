accessing
attributes
	^ attributes ifNil: [
			attributes := JavaCollection new
		]