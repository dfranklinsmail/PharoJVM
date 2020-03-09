constructor
sourceFile: aString
	self attributesAppend: (
		JavaSourceFileAttribute new
			constantPool: constantPool;
			sourceFileName: aString;
			yourself
		)