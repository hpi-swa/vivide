inspecting
explore: anObject

	ActiveVivide ifNil: [^ super explore: anObject].
	^ ActiveVivide openArtifact: anObject