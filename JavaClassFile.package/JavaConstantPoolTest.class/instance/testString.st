testing
testString
	self assert: (cp makeString: 'abcd') equals: (cp makeString: 'abcd').
	self assert: (cp makeString: 'abcd')==(cp makeString: 'abcd').
 	self assert: (cp makeString: 'abcd') cpIndex equals: 2.
 	self assert: (cp makeString: 'abcd') tag equals: 8.
 	self assert: (cp makeString: 'abcd') asString equals: '''abcd'''.
