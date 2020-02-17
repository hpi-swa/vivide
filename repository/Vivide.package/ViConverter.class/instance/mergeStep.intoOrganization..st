merge
mergeStep: dict intoOrganization: organization

	^ (organization stepById: (dict at: #id))
		ifNotNil: [:step | step mergeFromDictionary: dict; yourself]
		ifNil: [(ViScriptObject newFrom: dict) organization: organization; register; yourself]