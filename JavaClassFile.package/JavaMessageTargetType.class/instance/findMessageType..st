type inference
findMessageType: aJavaType
	aJavaType isMethod ifFalse: [ ^ nil ].
	methodMap at: aJavaType name ifPresent: [: each |
		each detect: [: method |
					aJavaType parameterTypes = method parameterTypes
			] ifFound: [: method |
				^ method
	]]	.
	requiredInterfaces do: [: aJavaClassType |
		(aJavaClassType findMessageType: aJavaType exactly: false) ifNotNil: [: method |
			^ method
		]
	].
	commonClassType ifNotNil: [
		(commonClassType findMessageType: aJavaType exactly: false) ifNotNil: [: method |
			^ method
		]
	].
	^ nil