scopes
bindAll: names to: types do: aBlock
	| tempScope |
	tempScope := JavaScope new enclosedBy: scope.
	tempScope bind: names to: types.
	^ self withScope: tempScope do: aBlock