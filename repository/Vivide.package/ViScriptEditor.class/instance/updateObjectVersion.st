updating
updateObjectVersion

	ViQuerySerializer
		updateStep: self object
		category: (ViQuerySerializer categoryPrefixFor: self object)
		archive: self object archive.

	ViQuerySerializer
		updateDefinition: self object definition
		category: (ViQuerySerializer categoryPrefixFor: self object definition)
		archive: self object definition archive.