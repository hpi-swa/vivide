actions - open
openSenders: aSymbol after: anEditor

	| editor |
	editor := (self
		addEditorFromState: (ViEditorStateLookupService queryStateForSenders
			objects: {aSymbol})
		after: anEditor).
	
	^ editor
	