type inference
isUnifiableWith: other
	^ other isWildWildType or: [ other class = self class or: [ other isPointerType and: [
		false
	]]]