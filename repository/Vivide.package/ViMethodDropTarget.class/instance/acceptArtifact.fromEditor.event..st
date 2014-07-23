dropping - specific
acceptArtifact: anArtifactContainer fromEditor: anEditor event: evt

	^ self
		acceptObjects: {anArtifactContainer object}
		fromEditor: anEditor
		event: evt