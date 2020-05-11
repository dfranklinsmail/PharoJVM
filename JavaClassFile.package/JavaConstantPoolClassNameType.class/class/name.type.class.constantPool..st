instance creation
name: aString type: a2ndString class: a3rdString constantPool: aJavaConstantPool
		^ aJavaConstantPool addUnique: (
			self new
				ref1: (JavaConstantPoolClass string: a3rdString constantPool: aJavaConstantPool)
				ref2: (JavaConstantPoolNameAndType
								name: aString type: a2ndString constantPool: aJavaConstantPool))