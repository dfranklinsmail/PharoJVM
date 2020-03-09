testing
testBasic
	self deny: (JavaType boolean isUnifiableWith: JavaType int).
	self assert: (JavaType boolean isUnifiableWith: JavaType boolean).