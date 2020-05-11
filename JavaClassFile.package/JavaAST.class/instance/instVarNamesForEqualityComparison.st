comparing
instVarNamesForEqualityComparison
	| names |
	names := OrderedCollection newFrom: super instVarNamesForEqualityComparison.
	start ifNil: [ names remove: #start ifAbsent: nil].
	end ifNil: [ names remove: #end ifAbsent: nil].
	constantPool ifNil: [ names remove: #constantPool ifAbsent: nil].
	type ifNil: [ names remove: #type ifAbsent: nil].
	^ names