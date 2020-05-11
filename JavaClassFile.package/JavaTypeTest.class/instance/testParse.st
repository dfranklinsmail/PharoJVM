testing
testParse
	self assert: (JavaType parse: 'I') equals: {JavaType int}.
	self assert: (JavaType parse: '(ID)Z') equals: {JavaType int. JavaType double. JavaType boolean}.
	self assert: (JavaType parse: '(Ljava/lang/Object;Z)V') equals: {JavaClassType withClass: (JavaPackage classLookup: 'java/lang/Object'). JavaType boolean. JavaType void}.
	self assert: (JavaType parse: '([[Ljava/lang/String;Z)V') equals: {JavaArrayType of: (JavaArrayType of: (JavaClassType withClass: (JavaPackage classLookup: 'java/lang/String'))). JavaType boolean. JavaType void}.
