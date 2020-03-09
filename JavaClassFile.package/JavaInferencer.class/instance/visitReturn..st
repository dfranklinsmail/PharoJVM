type inference
visitReturn: aJavaReturn 
	^ aJavaReturn type ifNil: [
		aJavaReturn type: (self unify: aJavaReturn defaultTypeOrWild with: (aJavaReturn with acceptVisitor: self))
	]