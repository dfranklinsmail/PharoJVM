accessing
instanceField: aString type: aString2 
	self instanceField: ((JavaIdentifier new named: aString) type: (JavaType parseInferred: aString2) first;yourself)