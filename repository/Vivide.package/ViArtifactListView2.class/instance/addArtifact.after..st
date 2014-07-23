add/remove
addArtifact: anArtifactContainer after: anotherArtifact

	anArtifactContainer grabKeyboard.
	
	self artifactContainerColumn
		addMorph: anArtifactContainer
		after: anotherArtifact.
	
	^ anArtifactContainer