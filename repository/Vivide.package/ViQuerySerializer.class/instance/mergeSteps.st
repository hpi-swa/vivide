private - merge
mergeSteps

	archive selectors
		select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #step) notNil]
		thenDo: [:selector | self mergeStep: selector].