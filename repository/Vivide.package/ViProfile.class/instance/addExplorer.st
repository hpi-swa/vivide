initialization - scripts
addExplorer

	self addScript: {
	
		[:in :out | out addAll: in] asScript -> {
			#label -> 'Inspector'.
			#windowTitle -> #simple.
			#view -> ViExplorerView.
			#editable -> true.
			#id -> #objectExplorer.
			#priority -> 500}.
	
	} asScript