pane api
updateModelInput: newObjects

	self model ifNil: [
		"Needed for tests that do not use a model here."
		self onObjectsChanged.
		^ self].
	
	self doNonReentrant: [
		self model inputForChildren: newObjects.
		self onObjectsChanged].