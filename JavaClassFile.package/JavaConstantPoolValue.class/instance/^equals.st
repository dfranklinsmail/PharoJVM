comparing
= anObject
	^ super == anObject or: [ self class = anObject class and: [ value == anObject value ] ]