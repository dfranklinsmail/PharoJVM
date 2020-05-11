class initialization
initialize
	SpecialSends := {
		#new -> #specialNew:message:.
		#with: -> #specialWith:message:.
		#+ -> #optMath:message:.
		#- -> #optMath:message:.
		#* -> #optMath:message:.
		#/ -> #optMath:message:.
		#// -> #optIMath:message:.
		#\\ -> #optIMath:message:.
		#< -> #optCompare:message:.
		#> -> #optCompare:message:.
		#<= -> #optCompare:message:.
		#>= -> #optCompare:message:.
		#= -> #optCompare:message:.
		#~= -> #optCompare:message:.
		#at: -> #optIndex:message:.
		#at:put: -> #optIndexAssign:message:.
		#do: -> #optIterate:message:.
		#collect: -> #optCollect:message:.
		#timesRepeat: -> #optRepeat:message:.
		#to:do: -> #optToDo:message:.
		#to:by:do: -> #optToDo:message:.
		#ifTrue: -> #optIfTrue:message:.
		#ifFalse: -> #optIfTrue:message:.
		#ifFalse:ifTrue: -> #optIfTrue:message:.
		#ifTrue:ifFalse: -> #optIfTrue:message:.
		#ifNil: -> #optIfNil:message:.
		#ifNotNil: -> #optIfNil:message:.
		#ifNotNil:ifNil: -> #optIfNil:message:.
		#ifNil:ifNotNil: -> #optIfNil:message:.
		} asDictionary.