loading
resolveRefs
	array do: [: each |
		each resolveRefs: self
	]