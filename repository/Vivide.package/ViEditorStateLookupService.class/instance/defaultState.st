accessing
defaultState

	| state |
	state := ViEditorState new.
	state properties at: #className put: self editorClass name.
	
	self editorClass == ViObjectListEditor ifTrue: [
		self setProperties: #((headerText 'Unnamed')) to: state.
		self setProperties: #((className ViArtifactListPage)) to: state newState].
	
	^ state