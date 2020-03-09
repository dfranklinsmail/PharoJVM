input/output
outputOn: s
	s
		uint32: 16rCAFEBABE;
		uint16: 0;
		uint16: 52.
	constantPool outputOn: s.
	s uint16: accessFlags.
	thisClass cpIndexOn: s.
	superClass cpIndexOn: s.
	interfaces outputOn: s.
	fields outputOn: s.
	methods outputOn: s.
	attributes outputOn: s.
