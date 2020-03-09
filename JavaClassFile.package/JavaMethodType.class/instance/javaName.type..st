accessing
javaName: aString type: a2ndString
	| types |
	types := JavaType parseInferred: a2ndString.
	self messageType: (JavaMessageType new selector: aString parameterTypes: types allButLast).
	self resultType: types last.
