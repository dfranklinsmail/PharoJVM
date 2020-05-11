testing
testBasic
	self assert: (parser on: 'foo';parseExpressionBasic)
			equals: ((JavaIdentifier named: 'foo') start: 1 end: 3).
	self assert: (parser on: '#foo';parseExpressionBasic)
			equals: ((JavaSymbol value: 'foo') start: 1 end: 4).
	self assert: (parser on: '#''foo bar''';parseExpressionBasic)
			equals: ((JavaSymbol value: 'foo bar') start: 1 end: 10).
	self assert: (parser on: '''foo''';parseExpressionBasic)
			equals: ((JavaString value: 'foo') start: 1 end: 5).
	self assert: (parser on: '''foo''''s''';parseExpressionBasic)
			equals: ((JavaString value: 'foo''s') start: 1 end: 8).
	self assert: (parser on: '42';parseExpressionBasic)
			equals: ((JavaNumber value: 42) start: 1 end: 2).
	self assert: (parser on: '
	42.';parseExpressionBasic)
			equals: ((JavaNumber value: 42) start: 3 end: 4).
	self assert: (parser on: '42.35';parseExpressionBasic)
			equals: ((JavaNumber value: 5*0.01+42.3) start: 1 end: 5).
	self assert: (parser on: '16rabCD';parseExpressionBasic)
			equals: ((JavaNumber value: 16rabcd) start: 1 end: 7).
	self assert: (parser on: ' $A';parseExpressionBasic)
			equals: ((JavaCharacter value: $A) start: 2 end: 3).
