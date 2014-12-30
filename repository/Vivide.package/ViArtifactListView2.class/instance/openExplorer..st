nil
openExplorer: anObject

	self artifactContainerColumn
		addMorph: (ViObjectEditor new
			object: anObject;
			hResizing: #spaceFill)
		after: self focusedArtifact.