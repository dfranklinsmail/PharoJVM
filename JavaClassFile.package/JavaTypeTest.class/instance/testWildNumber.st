testing
testWildNumber
	| n1 n2 |
	self assert: (JavaType number isUnifiableWith: JavaType wild).
	self assert: (JavaType wild isUnifiableWith: JavaType number).
	self assert: (JavaType number union: JavaType wild) class equals: JavaWildNumberType.
	self assert: (JavaType wild union: JavaType number) class equals: JavaWildNumberType.
	self assert: (JavaType number isUnifiableWith: JavaType int).
	self assert: (JavaType int isUnifiableWith: JavaType number).
	self assert: (JavaType number union: JavaType int) equals: JavaType int.
	self assert: (JavaType int union: JavaType number) equals: JavaType int.
	self deny: (JavaType number isUnifiableWith: JavaType void).
	self deny: (JavaType void isUnifiableWith: JavaType number).
	n1 := JavaType number value: 60.
	n2 := JavaType number value: 500.
	self assert: (n1 isUnifiableWith: JavaType byte).
	self deny: (n2 isUnifiableWith: JavaType byte).
	self assert: (n1 isUnifiableWith: n2).
	n1 union: n2.
	self deny: (n1 isUnifiableWith: JavaType byte).
