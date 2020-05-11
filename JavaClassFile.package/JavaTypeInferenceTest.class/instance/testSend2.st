testing
testSend2
	| id msg default send msg2 |
	id := JavaIdentifier named: 'foo'.
	inferencer addToScope: id.
	msg := JavaMessage new selector: 'bar' arguments: #().
	msg2 := JavaMessage new selector: 'blat' arguments: #().
	default := JavaType wild.
	send := JavaSend new target: id messages: {msg. msg2}.
	self deny: id type = default.
	inferencer typeOf: send.
	self assert: id type class equals: JavaMessageTargetType.
	self deny: (id type findMessageType: (JavaMessageType new selector: 'bar' parameterTypes: #()) exactly: true) isNil.
	self deny: (id type findMessageType: (JavaMessageType new selector: 'blat' parameterTypes: #()) exactly: true) isNil.
	self deny: (id type findMessageType: (JavaMessageType new selector: 'bar' parameterTypes: #()) exactly: true) =
						(id type findMessageType: (JavaMessageType new selector: 'blat' parameterTypes: #()) exactly: true).
