accessing
name
	^ javaName ifNil: [ | idx |
		javaName := self selector.
		idx := javaName indexOf: $:.
		idx > 0 ifTrue: [ javaName := javaName first: idx - 1 ].
		idx := javaName indexOf: $_.
		idx > 0 ifTrue: [ javaName := javaName first: idx - 1 ].
		javaName
	]