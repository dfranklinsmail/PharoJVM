accessing
at: aString ifAbsentPut: aBlock
	aBlock ifNil: [ ^ nil ].
	^ dict at: aString ifAbsentPut: [ | v |
			v := aBlock value.
			isGlobalNamespace ifTrue: [ JavaGlobals addBinding: aString value: v ].
			v
		]