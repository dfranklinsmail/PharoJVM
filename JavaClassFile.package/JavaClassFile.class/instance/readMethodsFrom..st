reading
readMethodsFrom: s
	s uint16 timesRepeat: [
		methods add: (self read: JavaClassMethod from: s)
	].
