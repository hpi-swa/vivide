accessing - convenience
nextUpdateSetDefinitions

	^ Array streamContents: [:strm | self nextStepsDo: [:step |
		step updateSetDefinition ifNotNil: [:def | strm nextPut: def]]]