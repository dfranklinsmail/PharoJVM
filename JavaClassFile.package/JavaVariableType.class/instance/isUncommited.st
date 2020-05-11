type inference
isUncommited
	parent ifNil: [ methodMap isEmptyOrNil and: [ commonClassType isNil and: [ elementType ifNil: [ ^true ] ] ] ].
	self error: #incomplete