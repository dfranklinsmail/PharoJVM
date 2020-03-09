reflective operations
doesNotUnderstand: aMessage
	| selector |
	selector := aMessage selector.
	^ dict at: selector ifAbsentPut: [
			selector first isUppercase ifTrue: [
				JavaVMClass name: selector package: self
			] ifFalse: [
				super doesNotUnderstand: aMessage
			]]