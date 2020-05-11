accessing
outputOn: s
	s int16: accessFlags |
		(instanceSide ifTrue: 0 ifFalse: JavaClassFile STATIC) |
		JavaClassFile PUBLIC.
	methodName cpIndexOn: s.
	methodDescriptor cpIndexOn: s.
	self attributes outputOn: s.
