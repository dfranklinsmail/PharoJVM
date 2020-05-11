optimizing
optMath: aJavaSend message: message
	| messageType resultType |
	messageType := message acceptVisitor: self.
	resultType := JavaType number.
	self unify: messageType parameterTypes first with: resultType.
	^ self unify: (aJavaSend target acceptVisitor: self) with: resultType