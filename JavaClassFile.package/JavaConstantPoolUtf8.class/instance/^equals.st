comparing
= anObject
	^ super = anObject or: [ self class = anObject class and: [cpString = anObject cpString]]