construction
f: aString 
	self addMethodInternal: (JavaMethodType new messageType: (JavaMessageType new selector: aString asSymbol parameterTypes: {type.type});resultType: type) exactly: true.
