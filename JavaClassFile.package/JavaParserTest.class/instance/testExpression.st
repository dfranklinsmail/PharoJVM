testing
testExpression
	self assert: (parser on: 'foo bar: blat ';parseExpression)
			equals: (JavaSend new
								target: ((JavaIdentifier named: 'foo') start: 1 end: 3)
								messages: (JavaMessage new
													selector: #bar:
													arguments: ((JavaIdentifier named: 'blat') start: 10 end: 13);
													start: 5 end: 13);
								start: 1 end: 13).
	self assert: (parser on: 'foo bar:blat';parseExpression)
			equals: (JavaSend new
								target: ((JavaIdentifier named: 'foo') start: 1 end: 3)
								messages: (JavaMessage new
													selector: #bar:
													arguments: ((JavaIdentifier named: 'blat') start: 9 end: 12);
													start: 5 end: 12);
								start: 1 end: 12).
	self assert: (parser on: 'foo bar';parseExpression)
			equals: (JavaSend new
								target: ((JavaIdentifier named: 'foo') start: 1 end: 3)
								messages: (JavaMessage new
													selector: #bar
													arguments: #();
													start: 5 end: 7);
								start: 1 end: 7).
	self assert: (parser on: '3negated+4allMask:2negated+2';parseExpression)
			equals: (JavaSend new
								target: (JavaSend new
								target: (JavaSend new
								target: ((JavaNumber value: 3) start: 1 end: 1)
								messages: (JavaMessage new
													selector: #negated
													arguments: #();
													start: 2 end: 8);
								start: 1 end: 8)
								messages: (JavaMessage new
													selector: #+
													arguments: ((JavaNumber value: 4) start: 10 end: 10);
													start: 9 end: 10);
								start: 1 end: 10)
								messages: (JavaMessage new
													selector: #allMask:
													arguments: (JavaSend new
								target: (JavaSend new
								target: ((JavaNumber value: 2) start: 19 end: 19)
								messages: (JavaMessage new
													selector: #negated
													arguments: #();
													start: 20 end: 26);
								start: 19 end: 26)
								messages: (JavaMessage new
													selector: #+
													arguments: ((JavaNumber value: 2) start: 28 end: 28);
													start: 27 end: 28);
								start: 19 end: 28);
													start: 11 end: 28);
								start: 1 end: 28).
	self assert: (parser on: ' 3 + 4  ';parseExpression)
			equals: (JavaSend new
								target: ((JavaNumber value: 3) start: 2 end: 2)
								messages: (JavaMessage new
													selector: #+
															arguments: ((JavaNumber value: 4) start: 6 end: 6);
															start: 4 end: 6);
								start: 2 end: 6).
	self assert: (parser on: ' 3 + 4 ; yourself ';parseExpression)
			equals: (JavaSend new
								target: ((JavaNumber value: 3) start: 2 end: 2)
								messages: {JavaMessage new
															selector: #+
															arguments: ((JavaNumber value: 4) start: 6 end: 6);
															start: 4 end: 6.
													JavaMessage new
														selector: #yourself
														arguments: #();
														start: 10 end: 17};
								start: 2 end: 17).
	self assert: (parser on: ' 3 + 4 ; * 2';parseExpression)
			equals: (JavaSend new
								target: ((JavaNumber value: 3) start: 2 end: 2)
								messages: {JavaMessage new
															selector: #+
															arguments: ((JavaNumber value: 4) start: 6 end: 6);
															start: 4 end: 6.
													JavaMessage new
														selector: #*
														arguments: ((JavaNumber value: 2) start: 12 end: 12);
														start: 10 end: 12};
								start: 2 end: 12).
	self assert: (parser on: ' 3 + 4 ;yourself;allMask: 3 ';parseExpression)
			equals: (JavaSend new
								target: ((JavaNumber value: 3) start: 2 end: 2)
								messages: {JavaMessage new
															selector: #+
															arguments: ((JavaNumber value: 4) start: 6 end: 6);
															start: 4 end: 6.
													JavaMessage new
														selector: #yourself
														arguments: #();
														start: 9 end: 16.
													JavaMessage new
														selector: #allMask:
														arguments: ((JavaNumber value: 3) start: 27 end: 27);
														start: 18 end: 27};
								start: 2 end: 27).
"	self assert: (parser on: '3 + 4 * 2 ;yourself;allMask: 3';parseExpression)
			equals: nil.
	self assert: (parser on: '3 allMask: 3; *2';parseExpression)
			equals: nil.
"