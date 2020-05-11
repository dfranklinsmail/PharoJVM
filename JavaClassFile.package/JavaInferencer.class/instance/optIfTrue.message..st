optimizing
optIfTrue: aJavaSend message: message
	" all of the ifTrue:/ifFalse: family"
	|  selector arguments result |
	selector := message selector.
	arguments := (OrderedCollection new: 3) addAll: message arguments;yourself.
	arguments size = 1 ifTrue: [ arguments add: JavaNil new ].
	(selector beginsWith: 'ifFalse:') ifTrue: [ arguments addLast: arguments removeFirst ].
	result := aJavaSend defaultTypeOrWild.
	self unify: (aJavaSend target acceptVisitor: self) with: JavaType boolean.
	arguments do: [: each |
		each acceptVisitor: self.
		self unify: each resultType with: result.
	].
	^ aJavaSend type: result