type inference
isUnifiableWith: other
	| oType |
	oType := other type.
	^ self == oType or: [ oType isWildNumericType and: [ self rangeCheck: oType ] ]