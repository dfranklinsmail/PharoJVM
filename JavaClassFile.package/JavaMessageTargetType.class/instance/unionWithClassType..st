type inference
unionWithClassType: aJavaClassType
	aJavaClassType isInterface ifTrue: [ ^ self unionWithInterfaceType: aJavaClassType ].
	(classTypes includes: aJavaClassType) ifTrue: [ ^ self ]. 
	methodMap do: [: method |
		(aJavaClassType hasValidMethod: method) ifTrue: [
				aJavaClassType methodsMatching: method do: [: m | m union: method ]
			] ifFalse: [
				self error: 'class ',aJavaClassType javaClass asString, ' does not support ',method asString
			]
	].
	commonClassType := commonClassType ifNil: [
		aJavaClassType
	] ifNotNil: [
		commonClassType findCommonClass: aJavaClassType
	].
	classTypes add: aJavaClassType.
