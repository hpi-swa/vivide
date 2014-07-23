actions - open
openImplementors: aSymbol after: anEditor

	| editor |
	editor := (self
		addEditorFromState: (ViEditorStateLookupService queryStateForImplementors objects: {aSymbol})
		after: anEditor).
	
	^ editor