actions
requestArtifactFor: aNode

	self flag: #selectorMismatch. "mt: aNode ~= anArtifact"
	self artifactRequested: (aNode at: #object).