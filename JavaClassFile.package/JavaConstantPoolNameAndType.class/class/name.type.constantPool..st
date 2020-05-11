instance creation
name: aString type: a2ndString constantPool: aJavaConstantPool
		^ aJavaConstantPool addUnique: (
			self new
				ref1: (JavaConstantPoolUtf8 string: aString constantPool: aJavaConstantPool)
				ref2: (JavaConstantPoolUtf8 string: a2ndString constantPool: aJavaConstantPool))