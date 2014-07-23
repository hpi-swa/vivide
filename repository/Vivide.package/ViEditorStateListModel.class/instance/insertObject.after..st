actions - objects
insertObject: anObject after: aState

	| state node |
	state := ViEditorState new.
	state properties
		at: #object put: anObject;
		at: #headerText put: (ViLabelService doObject: anObject).
	node := self nodeAt: aState.
	
	self nodes
		add: (self wrapEditorState: state)
		after: node.
		
	"Update reference list."
	self editorStates
		add: state
		after: aState.
		
	self childInserted: (self nodes indexOf: node) + 1.