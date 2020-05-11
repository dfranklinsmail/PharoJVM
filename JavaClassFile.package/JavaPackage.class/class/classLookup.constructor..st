instance creation
classLookup: aString constructor: aBlock
	| package path component |
	path := $/ split: aString.
	path size = 1 ifTrue: [ path := $. split: aString ].
	package := self default.
	[  component := path removeFirst.
		path notEmpty
	] whileTrue: [
		package := package at: component ifAbsentPut: [self new parent: package name: component].
	].
	^ component isEmpty ifTrue: [
			package
		] ifFalse: [
			package at: component ifAbsentPut: [
				aBlock ifNotNil: [package at: component put: (aBlock value: component value: package)]
		]]