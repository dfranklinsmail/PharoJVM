accessing
main: ignored
	| ar tot flag n |
	ar := #(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20).
	tot := 0.
	flag := true.
	n := 0.
	[ (n:=n+1) <= 10000000] whileTrue: [ | n2 |
		n2 := 1.
		[n2 <= ar size] whileTrue: [| each |
			each := ar at: n2.
			n2 := n2 + 1.
			flag ifTrue: [ tot := tot + each ] ifFalse: [ tot := tot - each ]
		].
		flag := flag not.
	].
