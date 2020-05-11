input/output
outputOn: s
	| temp |
	attributeName cpIndexOn: s.
	temp := self contents.
	s int32: temp size.
	s nextPutAll: temp.
