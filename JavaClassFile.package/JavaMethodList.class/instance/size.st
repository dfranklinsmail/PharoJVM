testing
size
	| n |
	n := 0.
	methodMap valuesDo: [: v | n := n + (v isCollection ifTrue: [ v size ] ifFalse: 1)].
	^ n