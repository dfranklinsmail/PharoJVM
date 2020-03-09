initialize-release
initialize
	super initialize.
	javaPackage := nil.
	instanceMethods := OrderedCollection new.
	instanceFields := OrderedCollection new.
	classMethods := OrderedCollection new.
	classFields := OrderedCollection new.
	seq := 0.
