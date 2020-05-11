input/output
outputOn: s
	s int16: self size.
	array do: [: elem |
		elem outputOn: s
	]