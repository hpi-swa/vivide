inspecting
inspect: anObject

	VivideLight active ifNil: [^ super inspect: anObject].
	^ VivideLight active openArtifact: anObject