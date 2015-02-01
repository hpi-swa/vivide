initialization - scripts
addDefaultProperties

	self addScript: {
	
		[:object | {
			#icon -> (ViIconService doObject: object).
			#text -> (ViLabelService doObject: object)}] -> {
			#id -> #defaultProperties.
			#label -> 'Default Properties'}.
		[:object | #text -> (ViObjectOriginService doObject: object)]
	
	} asScript.