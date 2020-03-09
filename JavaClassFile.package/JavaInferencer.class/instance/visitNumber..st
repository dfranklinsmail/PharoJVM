type inference
visitNumber: aJavaNumber 
	^ aJavaNumber type ifNil: [
		aJavaNumber type: (JavaType number value: aJavaNumber value)
	]