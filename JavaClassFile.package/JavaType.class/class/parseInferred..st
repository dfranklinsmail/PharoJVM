accessing
parseInferred: aString
	| infer |
	^ (self parse: aString) collect: [: type |
		type isClass ifTrue: [
			(type acceptVisitor: (infer ifNil: [infer := JavaInferencer new])) instanceType
		] ifFalse: [
			type
	]]