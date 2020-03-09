initialize-release
binding: key
	^ self classPool at: key ifAbsent: nil