testing
testDouble
	| v |
	v := 2.1828 raisedTo: 40.
	self assert: (cp makeNumber: v) equals: (cp makeNumber: v).
	self assert: (cp makeNumber: v)==(cp makeNumber: v).
 	self assert: (cp makeNumber: v) cpIndex equals: 1.
 	self assert: (cp makeNumber: v) asString equals: v asString.
 	self assert: (cp makeNumber: v) asNumber equals: v.
 	self assert: (cp makeNumber: v) tag equals: 6.
