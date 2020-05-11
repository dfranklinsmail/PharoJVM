type inference
isUnifiableWith: other
	^ other isWildWildType or: [ other class = self class or: [ other isNumericType and: [ other rangeCheck: self ]]]