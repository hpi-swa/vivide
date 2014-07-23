accessing - convenience
nextUpdateClearDefinitions

	^ Array streamContents: [:strm | self nextStepsDo: [:step |
		step updateClearDefinition ifNotNil: [:def | strm nextPut: def]]]