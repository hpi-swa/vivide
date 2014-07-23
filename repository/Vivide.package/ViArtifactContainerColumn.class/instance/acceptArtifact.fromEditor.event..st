dropping/grabbing
acceptArtifact: anArtifactContainer fromEditor: anEditor event: evt

	self dropEditor: anArtifactContainer event: evt.
	anArtifactContainer justDroppedInto: self event: evt.