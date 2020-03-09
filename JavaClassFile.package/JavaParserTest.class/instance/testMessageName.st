testing
testMessageName
	self assert: (parser on: 'foo';parseMessageName)
			equals: 'foo'.
	self assert: (parser on: 'foo+34';parseMessageName)
			equals: 'foo'.
	self assert: (parser on: 'foo+34';parseMessageSelector:0)
			equals: 'foo'.
	self assert: (parser on: 'foo+34';parseMessageSelector:-1)
			equals: ''.
	self assert: (parser on: 'foo:bar';parseMessageSelector:0)
			equals: ''.
	self assert: (parser on: 'foo:bar';parseMessageSelector:-1)
			equals: ''.
	self assert: (parser on: 'foo:bar';parseMessageName)
			equals: 'foo:'.
	self assert: (parser on: '++foo:bar';parseMessageName)
			equals: '++'.
	self assert: (parser on: '++foo:bar';parseMessageSelector:0)
			equals: ''.
	self assert: (parser on: '++foo:bar';parseMessageSelector:1000)
			equals: '++'.
	self assert: (parser on: '++foo:bar';parseMessageSelector:-1)
			equals: '++'.
	self assert: (parser on: '++:foo:bar';parseMessageSelector:1000)
			equals: '++'.
	self assert: (parser on: 'foo:bar:blat';parseMessageSelector:1000)
			equals: 'foo:bar:'.
