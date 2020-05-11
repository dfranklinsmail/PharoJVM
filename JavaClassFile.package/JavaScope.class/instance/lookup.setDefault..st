updating
lookup: aString setDefault: aJavaType 
	^ dict at: aString ifPresent: [: value |
		value ifNil: [ dict at: aString put: aJavaType ]
	] ifAbsent: [
		enclosingScope ifNotNil: [ ^ enclosingScope lookup: aString setDefault: aJavaType ].
		aJavaType
	]