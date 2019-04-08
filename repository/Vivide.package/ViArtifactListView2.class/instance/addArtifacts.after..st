editors - add/remove
addArtifacts: someArtifactContainers after: anotherArtifact

	someArtifactContainers first grabKeyboard.
	
	self artifactContainerColumn
		addAllMorphs: someArtifactContainers
		after: anotherArtifact.
	
	^ someArtifactContainers