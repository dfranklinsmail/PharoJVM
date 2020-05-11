parsing
parse: aString
	| types classBeginning arrayCount isMethod |
	types := OrderedCollection new.
	arrayCount := 0.
	isMethod := false.
	aString withIndexDo: [: each : idx |
		(classBeginning notNil and: [each ~= $;]) ifFalse: [
			each switch
				case: $L do: [ classBeginning := idx + 1];
				case: $[ do: [ arrayCount := arrayCount + 1];
				case: $( do: [ isMethod := true];
				case: $) do: [ isMethod := true];
				otherwise: [ | type |
					each switch
						case: $I do: [ type := JavaInteger];
						case: $J do: [ type := JavaLong];
						case: $Z do: [ type := JavaBoolean];
						case: $B do: [ type := JavaByte];
						case: $D do: [ type := JavaDouble];
						case: $V do: [ type := JavaVoid];
						case: $; do: [
							type := JavaClassType withClass: (JavaPackage classLookup: (aString copyFrom: classBeginning to: idx-1)).
							classBeginning := nil];
						otherwise: [ self error: 'unexpected character in type' ].
					arrayCount timesRepeat: [ type := JavaArrayType of: type ].
					arrayCount := 0.
					types add: type
	]]].
	^ types