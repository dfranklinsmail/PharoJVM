testing
testUtf8
	self
		assert: (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp)
		equals: (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp).
	self
		assert: (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp)
		==      (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp).
 	self assert: (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp) cpIndex equals: 1.
 	self assert: (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp) tag equals: 1.
	self assert: (JavaConstantPoolUtf8 string: 'abcd' constantPool: cp) asString equals: 'abcd'.

