lookup
bind: names to: types
	names with: types do: [: name : type |
		dict at: name put: type.
	]