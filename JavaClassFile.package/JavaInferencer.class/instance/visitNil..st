type inference
visitNil: aJavaNil 
	^ aJavaNil type ifNil: [
		aJavaNil type: JavaType nil
	]