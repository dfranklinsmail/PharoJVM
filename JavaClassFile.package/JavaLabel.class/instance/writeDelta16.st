input/output
writeDelta16
	| delta |
	delta := position - code position + 1.
	code int16: delta.
