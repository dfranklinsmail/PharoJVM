testing
testMessage
	| f1 f2 |
	f1 := JavaMessageType new selector: 'meth' parameterTypes: #().
	f2 := JavaMessageType new selector: 'meth' parameterTypes: #().
	self assert: (f1 isUnifiableWith: f2).
	self deny: (f1 isUnifiableWith: (JavaMessageType new selector: 'other' parameterTypes: #())).
	self deny: (f1 isUnifiableWith: (JavaMessageType new selector: 'meth' parameterTypes: {JavaType int})).
	self assert: (JavaType wild isUnifiableWith: f1).
	self assert: (f1 isUnifiableWith: JavaType wild).
	self deny: (JavaType int isUnifiableWith: f1).
	self deny: (f1 isUnifiableWith: JavaType int).
	self assert: (JavaType wild union: f1) equals: f1.
	self assert: (f1 union: JavaType wild) equals: f1.
	self assert: (f1 isUnifiableWith: f2).
	self assert: (JavaMessageType new parameterTypes: {}) selector equals: 'value'.
	self assert: (JavaMessageType new parameterTypes: {JavaType int}) selector equals: 'value:'.
	self assert: (JavaMessageType new parameterTypes: {JavaType int. JavaType long}) selector equals: 'value:value:'.
	self assert: (JavaMessageType new parameterTypes: {JavaType int. JavaType long}) asJavaTypeString equals: '(IL)'.
