support
updateDefinition: definition

	^ self class
		updateDefinition: definition
		category: (self class categoryPrefixFor: definition)
		archive: archive