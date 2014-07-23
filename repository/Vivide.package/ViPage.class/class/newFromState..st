instance creation
newFromState: anEditorState

	^ (Smalltalk at: anEditorState theClassName) new
		loadState: anEditorState