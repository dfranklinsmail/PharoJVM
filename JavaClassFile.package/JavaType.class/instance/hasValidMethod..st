type inference
hasValidMethod: aJavaMethodType
	^ self supportedMethods detect: [: method |
			aJavaMethodType isUnifiableWith: method
		] ifFound: [: method |
			aJavaMethodType union: method.
			true
		] ifNone: [
			false
		]