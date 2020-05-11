testing
testUnionTypeFromVM2
	| m1 r1 infer ps m2 r2 m3 |
	JavaPackage resetTypes.
	infer := JavaInferencer new.
	m1 := JavaMessageType new selector: 'out' parameterTypes: {}.
	m2 := JavaMessageType new selector: 'println' parameterTypes: {JavaType int}.
	ps := JavaPackage classLookup: 'java/lang/System'.
	r1 := ps acceptVisitor: infer.
	r2 := infer unifyForSend: r1 with: m1.
	m3 := infer unifyForSend: r2 resultType with: m2.
	self assert: m3 resultType equals: JavaType void.
