constructor
lineNumberTable
	^ lineNumberTable ifNil: [
			lineNumberTable := JavaLineNumberTableAttribute new constantPool: constantPool.
			attributes add: lineNumberTable.
			lineNumberTable
		]