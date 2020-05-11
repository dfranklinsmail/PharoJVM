accessing
instanceType
	^ instanceType ifNil: [
			instanceType := self class new makeInstance.
			instanceType javaClass: javaClass.
		]
