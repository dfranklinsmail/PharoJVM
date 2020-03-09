testing
testUnionTypeFromVM
	| m1 r1 infer ps m2 |
	JavaPackage resetTypes.
	infer := JavaInferencer new.
	m1 := JavaMessageType new selector: 'println' parameterTypes: {JavaType int}.
	ps := JavaPackage classLookup: 'java/io/PrintStream'.
	r1 := (ps acceptVisitor: infer) instanceType.
	m2 := infer unifyForSend: r1 with: m1.
	self assert: m2 resultType equals: JavaType void.
