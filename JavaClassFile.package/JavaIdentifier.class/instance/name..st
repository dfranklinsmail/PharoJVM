accessing
name: aString 
	name := aString asSymbol.
	isSpecial := #(self super #nil #true #false) includes: name.