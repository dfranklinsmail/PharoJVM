testing
testAssignment
	| id num num2 num3 num4 |
	id := JavaIdentifier named: 'foo'.
	inferencer addToScope: id.
	num := JavaNumber value: 42.
	inferencer typeOf: (JavaAssignment new target: id value: num).
	self assert: (id type isUnifiableWith: JavaType byte).
	self assert: (id type isUnifiableWith: JavaType int).
	num2 := JavaNumber value: -150000.
	inferencer typeOf: (JavaAssignment new target: id value: num2).
	self assert: (id isUnifiableWith: JavaType int).
	self assert: (JavaType int isUnifiableWith: id).
	self deny: (id isUnifiableWith: JavaType byte).
	num3 := JavaNumber value: 3.145269.
	inferencer typeOf: (JavaAssignment new target: id value: num3).
	self assert: (id type isUnifiableWith: JavaType double).
	self assert: (id type isUnifiableWith: JavaType float).
	self deny: (id type isUnifiableWith: JavaType int).
	num4 := JavaNumber value: 3.5e38.
	inferencer typeOf: (JavaAssignment new target: id value: num4).
	self assert: (id type isUnifiableWith: JavaType double).
	self deny: (id type isUnifiableWith: JavaType float).
