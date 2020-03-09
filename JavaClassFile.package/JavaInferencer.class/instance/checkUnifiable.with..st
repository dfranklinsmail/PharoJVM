private
checkUnifiable: aJavaType with: a2ndJavaType
	(aJavaType isUnifiableWith: a2ndJavaType) ifFalse: [
		JavaUnificationError failedUnification: aJavaType with: a2ndJavaType
	].
