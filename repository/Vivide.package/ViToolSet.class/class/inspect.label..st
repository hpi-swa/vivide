inspecting
inspect: anObject label: aLabel

	VivideLight active ifNil: [^ super inspect: anObject label: aLabel].
	^ VivideLight active openArtifact: anObject