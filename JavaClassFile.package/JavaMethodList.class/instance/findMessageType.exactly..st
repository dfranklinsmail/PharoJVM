type inference
findMessageType: aJavaType exactly: exactly
	aJavaType isMethod ifFalse: [ ^ nil ].
	methodMap at: aJavaType name ifPresent: [: each |
		each detect: [: method |
				(exactly ifTrue: [
					aJavaType messageType isEquivalentTo: method messageType
				] ifFalse: [
					aJavaType messageType isUnifiableWith: method messageType
				]) and: [ aJavaType resultType isUnifiableWith: method resultType ]
			] ifFound: [: method |
				^ method
	]].
	^ nil