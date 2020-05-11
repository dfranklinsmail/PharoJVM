testing
testEmpty
	cf thisClass: 'Empty'.
	cf outputToFile.
	self assert: cf asByteArray equals: #[
		202 254 186 190 " magic "
		0 0 "minor version"
		0 52 "major version"
		0 5 "# cp values"
			1 0 16 106 97 118 97 47 108 97 110 103 47 79 98 106 101 99 116
			7 0 1
			1 0 5 69 109 112 116 121
			7 0 3
		0 32 "access flags"
		0 4 "this class"
		0 2 "superclass"
		0 0 "interfaces_count"
		0 0 "fields_count"
		0 0 "methods_count"
		0 0 "attributes_count"
	]