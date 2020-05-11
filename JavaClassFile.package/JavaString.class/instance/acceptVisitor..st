type inference
acceptVisitor: aJavaTypeInference 
	^ (aJavaTypeInference typeOf: (JavaPackage classLookup: 'java/lang/String')) instanceType