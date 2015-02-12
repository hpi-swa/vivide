initialization - scripts
addSnippets

	self flag: #deprecated. "mt: Remove from list of required scripts!"
	self addScript: {
	
		[:object | object] -> {
			#inputKind -> Object. #outputKind -> ViQuerySnippetDefinition.
			#id -> #snippets}.
	
	} asScript.