initialization - scripts
addDefaultPropertiesExtended

	self addScript: {
	
		[:object | {
			#icon -> (ViIconService doObject: object).
			#text -> (ViLabelService doObject: object).
			#morph -> (ViMorphService doObject: object). 
			#selectable -> (object class ~~ ViSeparator). 
			#tooltip -> [ViObjectPreviewHandler doObject: object]
		
		}] -> { #id -> #defaultPropertiesExtended }.
	
	} asScript.