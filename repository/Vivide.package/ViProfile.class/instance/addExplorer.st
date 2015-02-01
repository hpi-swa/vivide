initialization - scripts
addExplorer

	self addScript: {
	
		[:object | object] -> {
			#label -> 'Explorer'.
			#view -> ViExplorerView.
			#id -> #objectExplorer}.
	
	} asScript