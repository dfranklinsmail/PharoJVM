initialize
initialize
	super initialize.
	messageTargets := OrderedCollection new.
	scope := JavaScope new.
	typeMap := IdentityDictionary new.
