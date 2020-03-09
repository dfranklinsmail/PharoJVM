accessing
instanceFields: aCollection 
	aCollection do: [ : each | self instanceField: each ].
