instance creation
newFromState: anEditorState

	^ (Smalltalk at: anEditorState theClassName) basicNew
		initialize;
		loadState: anEditorState