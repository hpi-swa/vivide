serialization
serializeIntoArchive

	ViQuerySerializer
		updateStep: self
		category: 'steps'
		archive: self archive.

	ViQuerySerializer
		updateDefinition: self definition
		category: 'definitions'
		archive: self definition archive.