testing
hasValidMethod: aJavaMethodType 
	self methodsMatching: aJavaMethodType do: [ ^ true ].
	^ false