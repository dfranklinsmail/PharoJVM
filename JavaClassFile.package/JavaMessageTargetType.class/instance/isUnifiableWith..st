type inference
isUnifiableWith: aJavaType
	^ (self does: aJavaType support: methodMap) and: [ aJavaType verifySupport: self ]