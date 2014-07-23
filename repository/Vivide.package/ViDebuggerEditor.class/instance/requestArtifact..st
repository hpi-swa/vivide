actions
requestArtifact: aNode

	aNode ifNil: [^ self].
	self flag: #selectorMismatch. "mt: If you want to request an artifact, why need to supply a node?! Maybe rename selector..."
	self artifactRequested: (aNode at: #object).