input/output
infoOn: s
	| temp |
	temp := cpString asUTF8Bytes.
	s int16: temp size.
	s nextPutAll: temp.
