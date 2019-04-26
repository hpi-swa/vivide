initialization - scripts
addDefaultPropertiesExtended

	self addScript: {
	
		[:object | {
			#icon -> (ViIconService doObject: object).
			#text -> (ViLabelService doObject: object).
			#tooltip -> [ViObjectPreviewHandler doObject: object]}] -> {
			#id -> #defaultPropertiesExtended}.
		[:object | #text -> (ViObjectOriginService doObject: object)]
	
	} asScript.