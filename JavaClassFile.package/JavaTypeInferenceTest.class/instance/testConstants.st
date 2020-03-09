testing
testConstants
	| num string |
	num := inferencer typeOf: (JavaNumber value: 42).
	self assert: (num isUnifiableWith: JavaType byte).
	self assert: (num isUnifiableWith: JavaType int).
	string := inferencer typeOf: (JavaString value: 'hello').
	self assert: string isInstance.
	self assert: ((string asMessageTargetType: inferencer) isUnifiableWith: (JavaMethodType new javaName: #indexOf type: '(I)I')).
