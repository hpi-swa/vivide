actions
addProtocol

	| newName |
	newName := 'a new method category'.
	self theClass organization
		classify: self object selector
		under: newName.

	self artifactRequested: (ViProtocol named: newName inClass: self theClass).