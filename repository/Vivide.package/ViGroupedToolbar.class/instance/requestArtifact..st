callbacks
requestArtifact: aNode

	VivideLight active ifNotNil: [:vivide |
		vivide openArtifact: (aNode at: #object)].