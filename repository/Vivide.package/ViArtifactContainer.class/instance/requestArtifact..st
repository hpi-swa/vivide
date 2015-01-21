as yet unclassified
requestArtifact: anObject
	"Grab keyboard to ensure order in artifact list."

	self grabKeyboard.
	self artifactRequested: anObject.  