operations
doClassComment: aClassComment

	| state |
	state := ViEditorState new.
	state properties at: #className put: self editorClass name. "ViQueryEditor"
	
	self editorClass == ViObjectListEditor ifTrue: [
		self setProperties: #((headerText 'Comments')) to: state.
		self setProperties: #((className ViArtifactListPage)) to: state newState].
	
	^ state