inspecting
inspect: anObject

	ActiveVivide ifNil: [^ super inspect: anObject].
	^ ActiveVivide openArtifact: anObject