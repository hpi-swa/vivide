operations
doPackageInfo: aPackageInfo
	"List all classes in the given package grouped by category."

	| state |
	state := ViEditorState new.
	state properties at: #className put: self editorClass name. "ViQueryEditor"
	
	self editorClass == ViObjectListEditor ifTrue: [
		self setProperties: #((headerText 'Package') (currentPageIndex 2)) to: state.
		self setProperties: #((className ViArtifactListPage)) to: state newState.
		self setProperties: #((className ViQueryPage)) to: state newState].
	
	^ state