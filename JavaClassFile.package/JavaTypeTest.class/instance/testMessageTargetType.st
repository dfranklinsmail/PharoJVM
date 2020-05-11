testing
testMessageTargetType
	| infer target cl ct result |
	self halt.
	JavaPackage resetTypes.
	infer := JavaInferencer new.
	target := JavaMessageTargetType new: infer.
	result := target receiveMessage: (JavaMessageType new selector: 'println:' parameterTypes: {JavaType int}).
	self assert: result isWildWildType. 
	cl := JavaPackage classLookup: 'java/io/PrintStream'.
	ct := infer typeOf: cl.
	target union: ct instanceType.
	self assert: result equals: JavaType void.
	result := target receiveMessage: (JavaMessageType new selector: 'toString' parameterTypes: {}).
	self assert: result equals: (JavaType string: infer).
