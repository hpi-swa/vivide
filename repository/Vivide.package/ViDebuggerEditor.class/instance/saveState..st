memento - ui
saveState: anEditorState

	super saveState: anEditorState.
	anEditorState saveDebuggerEditor: self.