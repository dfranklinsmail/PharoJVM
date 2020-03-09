accessing
name
	^ javaName ifNil: [ javaName := ($_ split: ($: split: self selector) first) first ]