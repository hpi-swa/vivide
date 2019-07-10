merge
mergeDefinition: dict intoOrganization: organization

	^ (organization definitionById: (dict at: #id))
		ifNotNil: [:definition | definition mergeFromDictionary: dict; yourself]
		ifNil: [(ViScriptObject newFrom: dict) organization: organization; register; yourself]