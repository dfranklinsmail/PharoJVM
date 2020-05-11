private
is: aJavaMethodType validIn: aJavaClassType
	aJavaClassType methodsMatching: aJavaMethodType do: [: m |
		m union: aJavaMethodType.
		^ true
	].
	^ aJavaClassType superclass ifNotNil: [: sclass |
			self is: aJavaMethodType validIn: sclass 
		] ifNil: [
			false
		]