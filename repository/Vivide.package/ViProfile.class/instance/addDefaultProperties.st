as yet unclassified
addDefaultProperties

	self addScript: {
	
		[:object | #text -> object printString] -> {
			#id -> #defaultProperties}.
	
	} asScript.