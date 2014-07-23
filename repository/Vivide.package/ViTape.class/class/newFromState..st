instance creation
newFromState: anEditorState

	^ Cursor wait showWhile: [(Smalltalk at: anEditorState theClassName) new
		loadState: anEditorState]