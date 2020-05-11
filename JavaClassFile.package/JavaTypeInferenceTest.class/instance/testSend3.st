testing
testSend3
	| msg send target |
	msg := JavaMessage new selector: #println: arguments: (JavaString value: 'hello').
	target := JavaPackage classLookup: 'java/io/PrintStream'.
	target classMethod: (
				JavaMethod new
					header: (JavaMessage new
								selector: 'println:' arguments: {JavaIdentifier named: 'aString'})).
	send := JavaSend new target: target messages: { msg }.
	inferencer typeOf: send.
	self error: #incomplete.
