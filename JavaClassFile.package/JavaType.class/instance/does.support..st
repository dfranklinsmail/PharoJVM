type inference
does: aJavaType support: aCollection 
	^ aCollection allSatisfy: [: method | aJavaType hasValidMethod: method]