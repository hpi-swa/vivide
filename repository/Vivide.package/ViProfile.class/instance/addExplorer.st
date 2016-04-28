initialization - scripts
addExplorer

	self addScript: {
	
		[:in :out | out addAll: in] asScript -> {
			#label -> 'Inspector'.
			#view -> ViExplorerView.
			#id -> #objectExplorer.
			#priority -> 500}.
	
	} asScript