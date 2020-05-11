accessing class hierarchy
tagClassMap
	" self tagClassMap "
	| elements map tag |
	elements := self allSubclasses reject: #hasAbstractMethods.
	map := Array new: (elements inject: 0 into: [: max : class | max max: class new tag ]).
	elements do: [: class |
		tag := class new tag.
		tag isZero ifFalse: [map at: tag put: class].
	].
	^ map