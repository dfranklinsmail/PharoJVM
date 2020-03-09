type inference
visitIdentifier: aJavaIdentifier
	^ aJavaIdentifier type ifNil: [
		aJavaIdentifier type: (
			(scope lookup: aJavaIdentifier name) ifNil: [
				scope lookup: aJavaIdentifier name setDefault: JavaType wildBinding])
	]