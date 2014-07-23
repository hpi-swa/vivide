operations
doClassDescription: aClassDescription
	"List all methods for the given classes grouped by protocol."

	| state |
	state := ViEditorState new.
	state properties at: #className put: self editorClass name. "ViQueryEditor"
	
	self editorClass == ViObjectListEditor ifTrue: [
		self setProperties: #((headerText 'Methods') (currentPageIndex 2)) to: state.
		self setProperties: #((className ViArtifactListPage)) to: state newState.
		self setProperties: #((className ViQueryPage)) to: state newState].

	^ state