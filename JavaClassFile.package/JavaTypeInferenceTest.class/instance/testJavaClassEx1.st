testing
testJavaClassEx1
	| mainType jClass jClassType |
	mainType := (JavaMessageType new selector: #main: parameterTypes: {JavaType wild}) asMethodType.
	jClass :=	(JavaClass name: 'JavaClassEx1' package: JavaPackage default)
			classMethod: (
				JavaMethod new
					header: (JavaMessage new
						selector: 'main:' arguments: {(JavaIdentifier named: 'anArrayOfString') type: JavaType wild;yourself};
						type: mainType;
						yourself);
					instanceSide: false;
					type: mainType;
					body: {
						JavaSend new
							target: (JavaSend new
								target: ((JavaIdentifier named: 'System') "type: JavaType wild;"yourself)
								messages: ((JavaMessage new selector: 'out' arguments: #())
													type: (JavaMessageType new selector: #out parameterTypes: #());
													yourself);
"								type: JavaType wild;
"								yourself)
							messages: ((JavaMessage new selector: 'println:' arguments: {JavaString value: 'Hello Bar'})
												type: (JavaMessageType new
																selector: #println:
																parameterTypes: {(JavaPackage classLookup: 'java/lang/String') type});
												yourself);
"							type: JavaType wild;
"							yourself.
						JavaReturn new
							with: ((JavaIdentifier named: 'void') "type: JavaType void;"yourself);
"							type: JavaType void;
"							yourself});
			yourself.
	jClassType :=  JavaClassType new
					javaClass: jClass;
					methodTypes: {mainType};
					yourself.
	jClassType instanceType
		javaClass: jClass;
		methodTypes: #().
	jClass type: jClassType.
	self assert: JavaClassEx1 inferred equals: {jClass}.
