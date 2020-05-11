parsing
parseMessageWith: aSymbol
	| messageName arguments loop start savedPosition |
	arguments := OrderedCollection new.
	start := self skipWhitespace.
	messageName := self parseMessageName.
	messageName ifEmpty: [ ^ nil ].
	messageName first isAlphaNumeric ifTrue: [
		loop := messageName endsWith: ':'.
		savedPosition := source position.
		[ loop ] whileTrue: [ | temp |
			temp := self perform: aSymbol.
			arguments add: temp.
			savedPosition := temp end.
			self skipWhitespace.
			temp := self parseMessageName.
			temp ifEmpty: [
				loop := false
			] ifNotEmpty: [
				((temp endsWith: ':') and: [source peek ~= $=]) ifTrue: [
					messageName := messageName,temp
				]ifFalse: [
					source position: savedPosition.
					loop := false				
				]
		]]] ifFalse: [
			arguments add: self parseExpressionUnary.
			savedPosition := arguments last end.
		].
	^ (JavaMessage new selector: messageName asSymbol arguments: arguments) start: start end: savedPosition