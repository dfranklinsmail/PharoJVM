private
checkIntType: aJavaType
	self checkUnifiable: aJavaType with: JavaType long.
	^ aJavaType