testing
testMethod
	| f1 f2 |
	f1 := JavaMethodType new javaName: 'meth' type: '()V'.
	f2 := JavaMethodType new messageType: (JavaMessageType new selector: 'meth' parameterTypes: #()).
	self assert: (f1 isUnifiableWith: f2).
	self deny: (f1 isUnifiableWith: (JavaMethodType new javaName: 'other' type: '()V')).
	self deny: (f1 isUnifiableWith: (JavaMethodType new javaName: 'meth' type: '()I')).
	self deny: (f1 isUnifiableWith: (JavaMethodType new javaName: 'meth' type: '(I)V')).
	self assert: (JavaType wild isUnifiableWith: f1).
	self assert: (f1 isUnifiableWith: JavaType wild).
	self deny: (JavaType int isUnifiableWith: f1).
	self deny: (f1 isUnifiableWith: JavaType int).
	self assert: (JavaType wild union: f1) equals: f1.
	self assert: (f1 union: JavaType wild) equals: f1.
	self assert: (f1 isUnifiableWith: f2).
	self assert: f1 resultType equals: JavaType void.
	f1 union: f2.
	self assert: f2 resultType equals: JavaType void.
	#('()V' '()I' '(I)V' '(Ljava/lang/Object;Z)V' '([[Ljava/lang/String;Z)V') withIndexDo: [: type : idx | | nm mt |
		nm := 'name',idx asString.
		mt := JavaMethodType new javaName: nm type: type.
		self assert: mt asJavaTypeString equals: type.
		self assert: mt name equals: nm.
	].
