loading
readFrom: aStream
	| map count kind class |
	map := JavaConstantPoolElement tagClassMap.
	count := aStream uint16 - 1.
	[ array size < count ] whileTrue: [
		kind := aStream next.
		kind = 0 ifTrue:[
			self error: 'constant pool format problem'.
			aStream back
		] ifFalse: [
			class := map at: kind.
			array add: (class readFrom: aStream cpIndex: array size + 1 pool: self).
			class hasExtraClassPoolEntry ifTrue: [ array add: JavaConstantPoolPlaceholder new ].
	]].
	self resolveRefs.
