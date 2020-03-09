type inference
addMethodType: aJavaMethodType exactly: exactly
	^ (self findMessageType: aJavaMethodType exactly: exactly) ifNil: [
		self addMethodInternal: aJavaMethodType exactly: exactly
	]