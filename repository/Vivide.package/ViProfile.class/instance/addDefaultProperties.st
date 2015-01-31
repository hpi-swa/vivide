as yet unclassified
addDefaultProperties

	self flag: #boostrapError. "mt: Cannot be called if there is no default script."
	self addScript: {
	
		[:object | #text -> object printString] -> {
			#id -> ViQueryStep defaultProperties id }.
	
	} asScript.