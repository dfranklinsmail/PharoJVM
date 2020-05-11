testing
testMethod
	self
		assert: (cp makeMethodNamed: 'name' type: 'type' class: 'class')
		equals: (cp makeMethodNamed: 'name' type: 'type' class: 'class').
	self
		assert: (cp makeMethodNamed: 'name' type: 'type' class: 'class')
		==      (cp makeMethodNamed: 'name' type: 'type' class: 'class').
	self
		assert: (cp makeMethodNamed: 'name' type: 'type' class: 'class') cpIndex
		equals: 6.
	self
		assert: (cp makeMethodNamed: 'name' type: 'type' class: 'class') tag
		equals: 10.
	self
		assert: (cp makeMethodNamed: 'name' type: 'type' class: 'class') asString
		equals: 'a JavaConstantPoolMethodref(class.name:type)'.
