actions - objects
addObject: anObject

	| state |
	state := ViEditorState new.
	self flag: #ugly. "mt: Dirty trick to encapsulate single objects in editor state."
	state properties
		at: #object put: anObject;
		at: #headerText put: (ViLabelService doObject: anObject).
	
	self nodes add: (self wrapEditorState: state).
		
	"Update reference list."
	self editorStates add: state.
		
	self childInserted: self nodes size.