merge
mergeCommand: dict intoOrganization: organization

	^ (organization commandById: (dict at: #id))
		ifNotNil: [:command | command mergeFromDictionary: dict; yourself]
		ifNil: [(ViScriptObject newFrom: dict) organization: organization; register; yourself]