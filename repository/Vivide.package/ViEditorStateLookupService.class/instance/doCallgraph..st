operations - callgraph
doCallgraph: aCallgraph

	| state |
	state := ViEditorState new.
	state properties at: #className put: self editorClass name.
	
	self editorClass == ViObjectListEditor ifTrue: [
		self setProperties: #((headerText 'Call tree') (currentPageIndex 2)) to: state.
		self setProperties: #((className ViArtifactListPage)) to: state newState.
		self setProperties: #((className ViQueryPage)) to: state newState].
	
	^ state