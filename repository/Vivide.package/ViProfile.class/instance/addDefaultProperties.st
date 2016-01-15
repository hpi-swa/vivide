initialization - scripts
addDefaultProperties

	self addScript: {
	
		[:object | #text -> object printString]
			-> {#id -> #defaultProperties}.
	
	} asScript.