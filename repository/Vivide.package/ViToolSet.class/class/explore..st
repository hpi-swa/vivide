inspecting
explore: anObject

	VivideLight active ifNil: [^ super explore: anObject].
	^ VivideLight active openArtifact: anObject