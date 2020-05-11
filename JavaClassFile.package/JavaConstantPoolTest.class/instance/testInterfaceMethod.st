testing
testInterfaceMethod
	self
		assert: (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class')
		equals: (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class').
	self
		assert: (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class')
		==      (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class').
	self
		assert: (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class') cpIndex
		equals: 6.
	self
		assert: (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class') tag
		equals: 11.
	self
		assert: (cp makeInterfaceMethodNamed: 'name' type: 'type' class: 'class') asString
		equals: 'a JavaConstantPoolInterfaceMethodref(class.name:type)'.
