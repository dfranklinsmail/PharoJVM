testing
testJavaClassEx6
	| parse main |
	parse := JavaClassEx6 remove parse.
	self assert: parse class equals:	JavaClass.
	self assert: parse name equals: 'JavaClassEx6'.
	self assert: parse javaSuperclass equals: (JavaPackage classLookup: 'java/lang/Object').
	self assert: parse javaPackage equals: JavaPackage default.
	self assert: parse instanceMethods isEmpty.
	self assert: parse classMethods size equals: 1.
	main := parse 	classMethods first.
	self error: 'incomplete'.
		": (
				JavaMethod new
					header: (JavaMessage new
								selector: 'main:' arguments: {(JavaIdentifier named: 'anArrayOfString') start: 7 end: 21};
								start: 1 end: 21);
					instanceSide: false;
					body: {
						JavaSend new
							target: (JavaSend new
								target: ((JavaIdentifier named: 'System') start: 24 end: 29)
								message: (JavaMessage new
									selector: 'out' arguments: #());
								start: 24 end: 33)
							message: (JavaMessage new 
								selector: 'println:' arguments: {(JavaString value: 'Hello Bar') start: 44 end: 54};
								start: 35 end: 54);
							start: 24 end: 54.
						JavaReturn new
							with: ((JavaIdentifier named: 'void') start: 60 end: 63);
							start: 58 end: 63};
					start: 1 end: 63);
			yourself)"