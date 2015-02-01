initialization - scripts
addSnippets

	self flag: #deprected. "mt: Remove from list of required scripts!"
	self addScript: {
	
		[:object | object] -> {
			#inputKind -> Object. #outputKind -> ViQuerySnippetDefinition.
			#label -> 'Code Snippets'.
			#id -> #snippets}.
	
	} asScript.