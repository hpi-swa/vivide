actions - objects
insertObject: anObject before: aState

	| state node |
	state := ViEditorState new.
	state properties
		at: #object put: anObject;
		at: #headerText put: (ViLabelService doObject: anObject).
	node := self nodeAt: aState.
	
	self nodes
		add: (self wrapEditorState: state)
		before: node.
		
	"Update reference list."
	self editorStates
		add: state
		before: aState.
		
	self childInserted: (self nodes indexOf: node) - 1.