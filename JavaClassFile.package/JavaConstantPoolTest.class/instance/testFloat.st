testing
testFloat
	| v |
	v := 2.5 raisedTo: 22.
	self assert: (cp makeNumber: v) equals: (cp makeNumber: v).
	self assert: (cp makeNumber: v)==(cp makeNumber: v).
 	self assert: (cp makeNumber: v) cpIndex equals: 1.
 	self assert: (cp makeNumber: v) asString equals: v asString.
 	self assert: (cp makeNumber: v) asNumber equals: v.
 	self assert: (cp makeNumber: v) tag equals: 6. " Should be 4, but always use doubles "
