testing
testIfNil
	| id msg send |
	id := JavaIdentifier named: 'foo'.
	inferencer addToScope: id.
	msg := JavaMessage new selector: 'ifNil:ifNotNil:' arguments: {JavaNumber value: 42. JavaNumber value: 3}.
	send := JavaSend new target: id messages: msg.
	inferencer typeOf: id.
	self assert: id type isWildType.
	inferencer typeOf: send.
	self assert: (send type isUnifiableWith: JavaType int).
	self assert: (id type isUnifiableWith: JavaType pointer).
