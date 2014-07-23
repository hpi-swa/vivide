actions
openEditor: anEditorState

	self flag: #refactoring. "mt: Single-object states. Ugly..."
	(anEditorState properties includesKey: #object)
		ifTrue: [^ self openArtifact: (anEditorState properties at: #object)].

	(self focusedTape ifNil: [self addTape. self tapes last])
		addEditorFromState: anEditorState.