testing
testInteger
	self assert: (cp makeNumber: 42) equals: (cp makeNumber: 42).
	self assert: (cp makeNumber: 42)==(cp makeNumber: 42).
 	self assert: (cp makeNumber: 42) cpIndex equals: 1.
 	self assert: (cp makeNumber: 42) asString equals: '42'.
 	self assert: (cp makeNumber: 42) asNumber equals: 42.
 	self assert: (cp makeNumber: 42) tag equals: 3.
