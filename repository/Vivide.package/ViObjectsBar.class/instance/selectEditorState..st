actions
selectEditorState: aNode

	aNode ifNil: [^ self].
	
	self editorRequested: (aNode at: #state).