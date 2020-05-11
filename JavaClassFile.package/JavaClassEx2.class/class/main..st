accessing
main: ignored
	| ar tot flag |
	ar := #(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20).
	tot := 0.
	flag := true.
	10000000 timesRepeat: [
		ar do: [: each |
			flag ifTrue: [ tot := tot + each ] ifFalse: [ tot := tot - each ]
		].
		flag := flag not.
	].
