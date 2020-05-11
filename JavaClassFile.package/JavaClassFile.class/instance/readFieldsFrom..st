reading
readFieldsFrom: s
	s uint16 timesRepeat: [
		fields add: (self read: JavaClassField from: s)
	].
