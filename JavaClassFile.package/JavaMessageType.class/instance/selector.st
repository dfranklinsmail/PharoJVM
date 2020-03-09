accessing
selector
	^ selector ifNil: [
		selector := parameterTypes isEmpty ifTrue: [
				'value'
			] ifFalse: [
				'' join: (parameterTypes collect: [: ignored | 'value:'])
			]
	]