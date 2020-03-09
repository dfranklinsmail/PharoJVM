lookup
lookup: aString
	^ dict at: aString ifAbsent: [
			enclosingScope ifNotNil: [ ^ enclosingScope lookup: aString ].
			(JavaGlobals binding: aString) ifNotNil: [: value | ^ value  ].
			self halt.
			JavaType wild
		]