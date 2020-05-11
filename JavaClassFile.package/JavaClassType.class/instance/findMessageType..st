type inference
findMessageType: aJavaMethodType
	self methodsMatching: aJavaMethodType do: [: method |
		^ method
	].
	^ javaClass findMessageType: aJavaMethodType classType: self