processing
updateView: aMorph forEnvironment: anObject
	"The view is normally the (current) item view (e.g. a UiTreeView) and the environment is an instance of ViQueryPage. Returns the updated view, which might be totally different from the given one."
	
	^ self viewDefinition block
		cull: self
		cull: (aMorph ifNil: [Morph new])
		cull: anObject