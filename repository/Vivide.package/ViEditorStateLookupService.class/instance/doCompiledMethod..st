operations
doCompiledMethod: aMethod
	"List all versions of the method."

	| state |
	state := ViEditorState new.
	state properties at: #className put: self editorClass name. "ViQueryEditor"
	
	self editorClass == ViObjectListEditor ifTrue: [
		self setProperties: #((headerText 'Method')) to: state.
		self setProperties: #((className ViArtifactListPage)) to: state newState].

	^ state