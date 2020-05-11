testing
testParameterizedType
	| p1 p2 |
	p1 := JavaParameterizedType new.
	p2 := JavaParameterizedType new.
	self assert: (p1 isUnifiableWith: p2).
	self assert: (JavaType wild isUnifiableWith: p1).
	self assert: (p1 isUnifiableWith: JavaType wild).
	self deny: (JavaType int isUnifiableWith: p1).
	self deny: (p1 isUnifiableWith: JavaType int).
	self assert: (JavaType wild union: p1) equals: p1.
	self assert: (p1 union: JavaType wild) equals: p1."fix"
	p1 container: JavaType int.
	self assert: (p1 isUnifiableWith: p2).
	self assert: p1 container equals: JavaType int.
	p1 union: p2.
	self assert: p2 container equals: JavaType int.
