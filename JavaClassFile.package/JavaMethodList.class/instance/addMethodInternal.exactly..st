private
addMethodInternal: aJavaMethodType exactly: exactly
	| temp javaName |
	javaName := aJavaMethodType name.
	temp := methodMap at: javaName ifAbsent: [
		^ 	methodMap at: javaName put: aJavaMethodType.
	].
	temp detect: [: methodType |
				exactly ifTrue: [
					aJavaMethodType messageType isEquivalentTo: methodType messageType
				] ifFalse: [
					aJavaMethodType messageType isUnifiableWith: methodType messageType
				]
		] ifFound: [: methodType |
			(aJavaMethodType resultType isUnifiableWith: methodType resultType) ifFalse: [
				self error: 'incompatible methods'
			].
			^ methodType union: aJavaMethodType
		].
	methodMap at: javaName put: (temp asOrderedCollection add: aJavaMethodType;yourself).
	^ aJavaMethodType