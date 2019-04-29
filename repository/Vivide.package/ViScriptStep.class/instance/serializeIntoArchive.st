serialization
serializeIntoArchive

	ViQuerySerializer
		updateStep: self
		category: (ViQuerySerializer categoryPrefixFor: self)
		archive: self archive.

	ViQuerySerializer
		updateDefinition: self definition
		category: (ViQuerySerializer categoryPrefixFor: self definition)
		archive: self definition archive.