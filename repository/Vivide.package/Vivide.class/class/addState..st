states - editors
addState: anEditorClass

	| state |
	state := ViEditorState new.
	anEditorClass new saveState: state.
	self editorStates add: state.