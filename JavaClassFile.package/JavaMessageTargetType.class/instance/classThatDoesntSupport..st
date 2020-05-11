private
classThatDoesntSupport: method
	classTypes do: [: classType |
		(classType hasValidMethod: method) ifFalse: [ ^ classType ]
	].
	^ nil