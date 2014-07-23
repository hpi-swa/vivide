accessing
currentUpdateClearDefinition: anUpdateDefinition

	unsubscribeEdit definition: (anUpdateDefinition
		ifNil: [ViQueryUpdateDefinition new
			sourceCode: ViQueryUpdateDefinition defaultSourceCode]).