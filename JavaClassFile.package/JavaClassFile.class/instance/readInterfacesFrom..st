reading
readInterfacesFrom: s
	s uint16 timesRepeat: [
		interfaces add: (constantPool at: s uint16).
	].
