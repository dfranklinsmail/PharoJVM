constructor
code
	^ code ifNil: [
		code := JavaCode new constantPool: constantPool;instanceSide: instanceSide.
		code locals: (JavaType parse: methodDescriptor asString) size - (instanceSide ifTrue: 0 ifFalse: 1).
		self attributes add: code
	]