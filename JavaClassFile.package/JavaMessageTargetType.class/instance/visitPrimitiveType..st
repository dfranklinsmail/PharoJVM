type inference
visitPrimitiveType: aJavaPrimitiveType
	commonClassType ifNil: [
		commonClassType := aJavaPrimitiveType.
		classTypes add: aJavaPrimitiveType.
		^ self
	].
	self halt.
