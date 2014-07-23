actions - editors
addEditor: anEditor

	| cls state |
	cls := anEditor class.
	state := ViEditorState new.
	anEditor saveState: state.
	
	self nodes add: (self wrapEditorState: state).
		
	"Update reference list."
	self editorStates add: state.
		
	self childInserted: self nodes size.