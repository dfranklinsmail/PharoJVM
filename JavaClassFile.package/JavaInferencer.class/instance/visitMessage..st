type inference
visitMessage: aJavaMessage
	^ aJavaMessage type ifNil: [
		aJavaMessage type: (JavaMessageType new
			selector: aJavaMessage selector
			parameterTypes: (aJavaMessage arguments collect: [: each | self visitParameter: each])
	)]