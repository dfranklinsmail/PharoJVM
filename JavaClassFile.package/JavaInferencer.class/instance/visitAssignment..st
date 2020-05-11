type inference
visitAssignment: aJavaAssignment 
	| targetType valueType |
	^ aJavaAssignment type ifNil: [
		targetType := aJavaAssignment target acceptVisitor: self.
		self unify: targetType with: aJavaAssignment defaultTypeOrWild.
		valueType := aJavaAssignment value acceptVisitor: self.
		aJavaAssignment type: (self unify: targetType with: valueType)
	]