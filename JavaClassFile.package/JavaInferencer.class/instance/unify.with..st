private
unify: aJavaType with: a2ndJavaType
	self checkUnifiable: aJavaType type with: a2ndJavaType type.
	^ aJavaType type union: a2ndJavaType type.
