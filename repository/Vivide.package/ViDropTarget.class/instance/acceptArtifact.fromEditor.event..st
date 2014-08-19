dropping - specific
acceptArtifact: anArtifactContainer fromEditor: anEditor event: evt
	"Create a new editor for the container's object."
	
	self
		dropEditor: (ViMultiPaneEditor new: #artifacts for: {anArtifactContainer object})
		event: evt.