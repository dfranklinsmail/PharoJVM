type inference
isUnifiableWith: other
	^ self == other or: [ other isWildPointerType ]