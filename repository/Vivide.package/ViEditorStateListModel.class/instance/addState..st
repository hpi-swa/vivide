actions
addState: anEditorState

	self nodes add: (self wrapEditorState: anEditorState).
	self editorStates add: anEditorState.
	self childInserted: self nodes size.