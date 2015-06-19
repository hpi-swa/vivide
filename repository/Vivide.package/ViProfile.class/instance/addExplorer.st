initialization - scripts
addExplorer

	self addScript: {
	
		[:object | object] -> {
			#label -> 'Inspector'.
			#view -> ViExplorerView.
			#id -> #objectExplorer.
			#priority -> 500}.
	
	} asScript