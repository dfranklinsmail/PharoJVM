parsing
expect: aCharacter
	source peek = aCharacter ifFalse: [
		^ self error: 'unexpected character: ',source peek asString,' when expecting: ',(aCharacter ifNil: ['end of ',parsing]) asString
	].
	source next.
