scopes
withScope: newScope do: aBlock
	| savedScope |
	savedScope := scope.
	scope := newScope enclosedBy: scope.
	^ [ aBlock value ] ensure: [ scope := savedScope ]