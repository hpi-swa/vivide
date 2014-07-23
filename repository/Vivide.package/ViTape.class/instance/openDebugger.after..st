actions - open
openDebugger: aDebugger after: anEditor

	| editor |
	editor := (self
		addEditorFromState: ((ViEditorStateLookupService defaultStateFor: ViDebuggerEditor)
			objects: {aDebugger})
		after: anEditor).
	
	^ editor