testing
testJavaClassEx1
	JavaPackage removeGeneratedClasses.
	self assert: JavaClassEx1 classFile first asByteArray equals: #[
		202 254 186 190 " magic "
		0 0 "minor version"
		0 52 "major version"
		0 26 "# cp values"
			1 0 16 106 97 118 97 47 108 97 110 103 47 79 98 106 101 99 116
			7 0 1
			1 0 5 72 101 108 108 111
			7 0 3
			1 0 6 60 105 110 105 116 62
			1 0 3 40 41 86
			1 0 4 67 111 100 101
			12 0 5 0 6
			10 0 2 0 8
			1 0 4 109 97 105 110
			1 0 22 40 91 76 106 97 118 97 47 108 97 110 103 47 83 116 114 105 110 103 59 41 86
			1 0 16 106 97 118 97 47 108 97 110 103 47 83 121 115 116 101 109
			7 0 12
			1 0 3 111 117 116
			1 0 21 76 106 97 118 97 47 105 111 47 80 114 105 110 116 83 116 114 101 97 109 59
			12 0 14 0 15
			9 0 13 0 16
			1 0 11 72 101 108 108 111 32 87 111 114 108 100
			8 0 18
			1 0 19 106 97 118 97 47 105 111 47 80 114 105 110 116 83 116 114 101 97 109
			7 0 20
			1 0 7 112 114 105 110 116 108 110
			1 0 21 40 76 106 97 118 97 47 108 97 110 103 47 83 116 114 105 110 103 59 41 86
			12 0 22 0 23
			10 0 21 0 24
		0 32 "access flags"
		0 4 "this class"
		0 2 "superclass"
		0 0 "interfaces"
		0 0 "fields"
		0 2 "methods"
			0 1
			0 5
			0 6
			0 1
				0 7 "Code"
				0 0 0 17
					0 1 "maxStack"
					0 1 "locals"
					0 0 0 5
						42 "aload_0"
						183 0 9 "invokespecial"
						177 "return"
					0 0 "exceptions"
					0 0 "attributes"
			0 9
			0 10
			0 11
			0 1
				0 7 "Code"
				0 0 0 21
					0 2 "maxStack"
					0 1 "locals"
					0 0 0 9
						178 0 17 "getstatic #17"
						18 19 "ldc #19"
						182 0 25 "invokevirtual #25"
						177 "return"
						0 0 "exceptions"
						0 0 "attributes"
	0 0 "attributes"
	].