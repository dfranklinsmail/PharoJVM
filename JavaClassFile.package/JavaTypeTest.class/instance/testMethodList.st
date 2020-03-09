testing
testMethodList
	| f1 f2 ml |
	ml := JavaMethodList new.
	self assert: ml isEmpty.
	f1 := JavaMethodType new javaName: 'meth' type: '()V'.
	ml addMethodType: f1 exactly: true.
	self deny: ml isEmpty.
	self assert: (ml at: f1 messageType) resultType equals: JavaType void.
	f2 := JavaMethodType new javaName: 'meth' type: '(I)I'.
	ml addMethodType: f2 exactly: true.
	ml addMethodType: (JavaMethodType new javaName: 'other' type: '()I') exactly: true.
	self assert: ml size equals: 3.
	self should: [ ml addMethodType: (JavaMethodType new javaName: 'other' type: '()V') exactly: true]  raise: Error.
