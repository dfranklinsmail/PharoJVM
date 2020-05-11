testing
testIfTrue
	| id msg send |
	id := JavaIdentifier named: 'foo'.
	inferencer addToScope: id.
	msg := JavaMessage new selector: 'ifTrue:ifFalse:' arguments: {JavaNumber value: 42. JavaNumber value: 3}.
	send := JavaSend new target: id messages: msg.
	inferencer typeOf: id.
	self assert: id type isWildType.
	inferencer typeOf: send.
	self assert: (send type isUnifiableWith: JavaType int).
	self assert: id type equals: JavaType boolean.
	id := JavaIdentifier named: 'foo'.
	msg := JavaMessage new selector: 'ifFalse:' arguments: {JavaNumber value: 42}.
	send := JavaSend new target: id messages: msg.
	send defaultType: JavaWildForgetfulType new.
	inferencer typeOf: id.
	self assert: id type isWildType.
	inferencer typeOf: send.
	self assert: (send type isUnifiableWith: JavaType int).
	self assert: id type equals: JavaType boolean.
