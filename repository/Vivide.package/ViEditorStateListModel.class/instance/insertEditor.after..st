actions - editors
insertEditor: anEditor after: aState

	| cls state node |
	cls := anEditor class.
	state := ViEditorState new.
	anEditor saveState: state.
	node := self nodeAt: aState.
	
	self nodes
		add: (self wrapEditorState: state)
		after: node.
		
	"Update reference list."
	self editorStates
		add: state
		after: aState.
		
	self childInserted: (self nodes indexOf: node) + 1.