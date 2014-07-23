memento - ui
saveState: anEditorState

	super saveState: anEditorState.
	anEditorState saveTranscriptEditor: self.