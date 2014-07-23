dropping - specific
acceptArtifact: anArtifactContainer fromEditor: anEditor event: evt

	| editor |
	editor := ViObjectListEditor new.
	editor addArtifact: anArtifactContainer.
	
	self dropEditor: editor event: evt.
	anArtifactContainer justDroppedInto: editor event: evt.