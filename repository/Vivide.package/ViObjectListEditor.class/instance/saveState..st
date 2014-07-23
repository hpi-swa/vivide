memento - ui
saveState: anEditorState

	super saveState: anEditorState.
	anEditorState saveObjectList: self.