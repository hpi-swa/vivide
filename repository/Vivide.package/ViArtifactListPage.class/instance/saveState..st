memento - ui
saveState: anEditorState

	super saveState: anEditorState.
	anEditorState saveArtifactList: self.