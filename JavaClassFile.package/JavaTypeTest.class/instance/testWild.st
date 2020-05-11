testing
testWild
	self assert: (JavaType wild isUnifiableWith: JavaType wild).
	self assert: (JavaType wild isUnifiableWith: JavaType int).
	self assert: (JavaType int isUnifiableWith: JavaType wild).
	self assert: (JavaType wild union: JavaType wild) class equals: JavaWildWildType.
	self assert: (JavaType wild union: JavaType int) equals: JavaType int.
	self assert: (JavaType int union: JavaType wild) equals: JavaType int.
	self assert: (JavaType void isUnifiableWith: JavaType wild).
