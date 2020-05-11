testing
testClassUnionField
	| methodType jClass jClassType |
	methodType := JavaMethodType new javaName: #main: type: '(I)Z'.
	jClass :=	JavaClass name: 'JavaClassEx1' package: JavaPackage default.
	jClassType :=  JavaClassType new
					javaClass: jClass;
					methodTypes: {methodType};
					yourself.
	jClassType instanceType
		javaClass: jClass;
		methodTypes: #().
	jClass type: jClassType.
	methodType := (JavaMessageType new selector: #main: parameterTypes: {JavaType wild}) asMethodType.
	inferencer unifyForSend: jClass with: methodType.
	inferencer resolveMessageTargets.
	self assert: methodType resultType equals: JavaType boolean.
	self assert: methodType parameterTypes equals: {JavaType int}.
