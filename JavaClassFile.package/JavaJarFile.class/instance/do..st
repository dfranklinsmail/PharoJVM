enumerating
do: aBlock
	members do: [: file |
		(file fileName endsWith: '.class') ifTrue: [
			aBlock
				value: (file fileName allButLast: 6)
				value: file contents
	]]