initialization - scripts
addDefaultProperties

	self addScript: {
	
		[:object | {
			#icon -> (ViIconService doObject: object).
			#text -> (ViLabelService doObject: object)}] -> {
			#id -> #defaultProperties}.
		[:object | #text -> (ViObjectOriginService doObject: object)]
	
	} asScript.