type inference
failedUnification: aJavaType with: a2ndJavaType
	^ self new
		firstType: aJavaType;
		secondType: a2ndJavaType;
		signal: 'failed to unify'