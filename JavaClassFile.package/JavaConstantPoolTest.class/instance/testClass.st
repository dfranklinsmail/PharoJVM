testing
testClass
	self assert: (cp makeClass: 'Abcd') equals: (cp makeClass: 'Abcd').
	self assert: (cp makeClass: 'Abcd')==(cp makeClass: 'Abcd').
 	self assert: (cp makeClass: 'Abcd') cpIndex equals: 2.
 	self assert: (cp makeClass: 'Abcd') asString equals: 'Abcd'.
 	self assert: (cp makeClass: 'Abcd') tag equals: 7.
