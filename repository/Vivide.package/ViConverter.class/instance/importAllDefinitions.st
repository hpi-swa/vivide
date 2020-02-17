convert
importAllDefinitions

	self readDefinitions do: [:dict | self mergeDefinition: dict].