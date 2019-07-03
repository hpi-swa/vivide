private - serialize
serializeDefinitions

	definitions do: [:def | 
		definitionSelectors add: (self updateDefinition: def)].