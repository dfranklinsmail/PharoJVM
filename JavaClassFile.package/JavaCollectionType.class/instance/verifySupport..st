type inference
verifySupport: aJavaParameterType 
	aJavaParameterType isUncommited ifTrue: [ ^ true ].
	^ self error: #unfinished