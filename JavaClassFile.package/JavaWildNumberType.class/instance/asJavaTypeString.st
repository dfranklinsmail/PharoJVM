converting
asJavaTypeString
	^ javaType ifNil: [
		javaType := self javaTypeInternal	]