tests
test03AddArtifact

	| newDefinition newEditor |
	self setUpWindow.
	editor addArtifact.
	newEditor := window artifactContainers last.
	newDefinition := newEditor object.
	
	self
		assert: definition ~~ newDefinition;
		deny: newDefinition isRegistered;
		assert: definition class == newDefinition class.