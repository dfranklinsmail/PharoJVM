instance-creation
define: aString parameterType: aType
	| params |
	params := OrderedCollection new.
	aString numArgs timesRepeat: [
		params add: type
	].
