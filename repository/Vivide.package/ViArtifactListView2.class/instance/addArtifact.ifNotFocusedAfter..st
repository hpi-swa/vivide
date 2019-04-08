editors - add/remove
addArtifact: anArtifactContainer ifNotFocusedAfter: anotherArtifact

	^ self
		addArtifact: anArtifactContainer
		after: (self focusedArtifact ifNil: [anotherArtifact])