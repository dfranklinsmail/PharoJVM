sets support
greaterRank: other
	^ other isWildType and: [other isWildWildType or: [ rank > other rank ]]