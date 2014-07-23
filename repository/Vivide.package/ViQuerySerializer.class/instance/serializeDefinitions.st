private
serializeDefinitions

	definitions do: [:def | 
		definitionSelectors add: (self updateDefinition: def)].