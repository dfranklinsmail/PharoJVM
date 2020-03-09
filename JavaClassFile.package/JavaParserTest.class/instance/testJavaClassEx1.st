testing
testJavaClassEx1
	self assert: JavaClassEx1 remove parse equals: (
		(JavaClass name: 'JavaClassEx1' package: JavaPackage default)
			classMethod: (
				JavaMethod new
					header: (JavaMessage new
								selector: 'main:' arguments: {(JavaIdentifier named: 'anArrayOfString') start: 7 end: 21};
								start: 1 end: 21);
					instanceSide: false;
					body: {
						JavaSend new
							target: (JavaSend new
								target: ((JavaIdentifier named: 'System') start: 24 end: 29)
								messages: (JavaMessage new
									selector: 'out' arguments: #());
								start: 24 end: 33)
							messages: (JavaMessage new 
								selector: 'println:' arguments: {(JavaString value: 'Hello Bar') start: 44 end: 54};
								start: 35 end: 54);
							start: 24 end: 54.
						JavaReturn new
							with: ((JavaIdentifier named: 'void') start: 60 end: 63);
							start: 58 end: 63};
					start: 1 end: 63);
			yourself)