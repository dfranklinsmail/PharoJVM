testing
testJavaType
	self assert: JavaType int asJavaTypeString equals: 'I'.
	self assert: (JavaType number value: 42) asJavaTypeString equals: 'B'.
	self assert: (JavaType number value: 420) asJavaTypeString equals: 'S'.
	self assert: (JavaType number value: 42000) asJavaTypeString equals: 'I'.
	self assert: (JavaType number value: 4200000000) asJavaTypeString equals: 'L'.
	self assert: (JavaType number value: 42.0) asJavaTypeString equals: 'F'.
	self assert: (JavaType number value: 42.0e310) asJavaTypeString equals: 'D'.
