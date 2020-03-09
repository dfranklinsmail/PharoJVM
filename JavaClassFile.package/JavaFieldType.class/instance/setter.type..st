accessing
setter: aJavaIdentifier type: type
	self messageType: (JavaMessageType new selector: aJavaIdentifier name parameterTypes: {type}).
	self resultType: JavaType void.
