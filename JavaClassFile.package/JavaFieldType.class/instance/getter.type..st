accessing
getter: aJavaIdentifier type: type
	self messageType: (JavaMessageType new selector: aJavaIdentifier name parameterTypes: #()).
	self resultType: type.
