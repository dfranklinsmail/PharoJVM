type inference
hasValidMethod: aJavaMethodType
	^ (self classThatDoesntSupport: aJavaMethodType) isNil