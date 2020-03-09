testing
shouldReadAttribute: aJavaCodeAttribute
	aJavaCodeAttribute isCode ifTrue: [ ^ readCode ].
	^ true