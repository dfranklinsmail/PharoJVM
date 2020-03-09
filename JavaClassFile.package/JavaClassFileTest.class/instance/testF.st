testing
testF
	| init initCode |
	cf thisClass: 'F'.
	cf sourceFile: 'F.java'.
	init := cf method: '<init>' type: '()V'.
	init instanceSide: true.
	initCode := init code.
	initCode
		aload_0;
		invokespecialClass: 'java/lang/Object' name: '<init>' type: '()V';
		return.
	initCode line: 1 at: 0.
	cf outputToFile.
	self assert: cf asByteArray equals: #[
		202 254 186 190 " magic "
		0 0 "minor version"
		0 52 "major version"
		0 13 "# cp values"
			1 0 16 106 97 118 97 47 108 97 110 103 47 79 98 106 101 99 116
			7 0 1
			1 0 1 70
			7 0 3
			1 0 10 83 111 117 114 99 101 70 105 108 101
			1 0 6 70 46 106 97 118 97
			1 0 6 60 105 110 105 116 62
			1 0 3 40 41 86
			1 0 4 67 111 100 101
			12 0 7 0 8
			10 0 2 0 10
			1 0 15 76 105 110 101 78 117 109 98 101 114 84 97 98 108 101
		0 32 "access flags"
		0 4 "this class"
		0 2 "superclass"
		0 0 "interfaces"
		0 0 "fields"
		0 1 "methods"
			0 1
			0 7
			0 8
			0 1
				0 9 "Code"
				0 0 0 29
					0 1 "maxStack"
					0 1 "locals"
					0 0 0 5
						42 "aload_0"
						183 0 11 "invokespecial"
						177 "return"
					0 0 "exceptions"
					0 1 "attributes"
						0 12 "LineNumberTable"
						0 0 0 6
							0 1 "entries"
								0 0 0 1 "pc=0 line=1"
		0 1 "attributes"
			0 5 "SourceFile"
			0 0 0 2
				0 6
		].
