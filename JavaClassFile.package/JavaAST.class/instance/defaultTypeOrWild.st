type inference
defaultTypeOrWild
	^ defaultType ifNil: [ defaultType := JavaType wild ]