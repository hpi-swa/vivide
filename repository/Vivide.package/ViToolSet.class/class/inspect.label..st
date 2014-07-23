inspecting
inspect: anObject label: aLabel

	ActiveVivide ifNil: [^ super inspect: anObject label: aLabel].
	^ ActiveVivide openArtifact: anObject