testing
testField
	self
		assert: (cp makeFieldNamed: 'name' type: 'type' class: 'class')
		equals: (cp makeFieldNamed: 'name' type: 'type' class: 'class').
	self
		assert: (cp makeFieldNamed: 'name' type: 'type' class: 'class')
		==      (cp makeFieldNamed: 'name' type: 'type' class: 'class').
	self
		assert: (cp makeFieldNamed: 'name' type: 'type' class: 'class') cpIndex
		equals: 6.
	self
		assert: (cp makeFieldNamed: 'name' type: 'type' class: 'class') tag
		equals: 9.
	self
		assert: (cp makeFieldNamed: 'name' type: 'type' class: 'class') asString
		equals: 'a JavaConstantPoolFieldref(class.name:type)'.
