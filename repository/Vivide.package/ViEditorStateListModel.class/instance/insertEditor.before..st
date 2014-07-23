actions - editors
insertEditor: anEditor before: aState

	| cls state node |
	cls := anEditor class.
	state := ViEditorState new.
	anEditor saveState: state.
	node := self nodeAt: aState.
	
	self nodes
		add: (self wrapEditorState: state)
		before: node.
		
	"Update reference list."
	self editorStates
		add: state
		before: aState.
		
	self childInserted: (self nodes indexOf: node) - 1.