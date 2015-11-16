tooling
openNode: node
	"Open the object in a different container and show its standard script."

	^ VivideLight active
		ifNil: [(node at: #object) explore]
		ifNotNil: [:vivide | vivide openArtifact: (node at: #object)]