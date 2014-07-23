callbacks
requestArtifact: aNode

	ActiveVivide ifNotNil: [:vivide | vivide openArtifact: (aNode at: #object)].