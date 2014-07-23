accessing
currentUpdateSetDefinition: anUpdateDefinition

	subscribeEdit definition: (anUpdateDefinition
		ifNil: [ViQueryUpdateDefinition new
			sourceCode: ViQueryUpdateDefinition defaultSourceCode]).