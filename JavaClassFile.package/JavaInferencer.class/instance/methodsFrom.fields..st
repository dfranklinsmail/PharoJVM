private
methodsFrom: methods fields: fields
	| result |
	result := methods copy.
	fields do: [: f |
		result add: (JavaFieldType new getter: f type: f type).
		result add: (JavaFieldType new setter: f type: f type).
	].
	^ result