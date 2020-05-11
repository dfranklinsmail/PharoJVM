comparing
= anObject
	^ super = anObject or: [
			self class = anObject class and: [
				ref1 = anObject ref1 and: [
					ref2 = anObject ref2]]]