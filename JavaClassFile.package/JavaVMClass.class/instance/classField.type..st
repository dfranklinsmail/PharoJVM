accessing
classField: aString type: aString2
	self classField: ((JavaIdentifier new name: aString) type: (JavaType parseInferred: aString2) first;yourself)