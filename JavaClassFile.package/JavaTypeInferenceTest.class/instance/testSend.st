testing
testSend
	| id msg send method |
	id := (JavaIdentifier new name: 'foo') type: inferencer defaultLocalVar;yourself.
	inferencer addToScope: id.
	msg := JavaMessage new selector: 'bar' arguments: #().
	send := JavaSend new target: id messages: msg.
	inferencer typeOf: send.
	self assert: id type receivedMessages size equals: 1.
	method := id type findMessageType: (JavaMessageType new selector: 'bar' parameterTypes: #()) exactly: true.
	self deny: method isNil.
	self assert: method resultType isWildType.
