type inference
receiveMessage: aJavaMethodType
	| method |
	method := aJavaMethodType asMethodType.
	method targetType ifNotNil: [ : t | self union: t ].
	(self classThatDoesntSupport: method) ifNotNil: [: classType |
		self error: 'message ',aJavaMethodType asString,' not supported in class: ',classType asString
	].
	^ ((methodMap findMessageType: method exactly: false) ifNil: [
		methodMap addMethodInternal: method exactly: false.
	] ifNotNil: [: temp |
		temp union: method
	]) resultType