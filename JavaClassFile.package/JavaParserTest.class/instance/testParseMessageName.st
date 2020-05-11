testing
testParseMessageName
	self assert: (parser on: 'abc2 d'; parseMessageName) equals: 'abc2'.
	self assert: (parser on: 'abc2+d'; parseMessageName) equals: 'abc2'.
	self assert: (parser on: 'abc2: d'; parseMessageName) equals: 'abc2:'.
	self assert: (parser on: 'abc2:d'; parseMessageName) equals: 'abc2:'.
	self assert: (parser on: '+%+4'; parseMessageSelector:1000) equals: '+%+'.
	self assert: (parser on: '+%+4'; parseMessageSelector:1000;position) equals: 3.
	self assert: (parser on: '+%+4'; parseMessageSelector:1000;parseLiteral) value equals: 4.
