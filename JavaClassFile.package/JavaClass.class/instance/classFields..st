accessing
classFields: aCollection 
	aCollection do: [ : each | self classField: each ].
