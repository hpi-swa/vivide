private - merge
mergeDefinitions

	archive selectors
		select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #definition) notNil]
		thenDo: [:selector | self mergeDefinition: selector].