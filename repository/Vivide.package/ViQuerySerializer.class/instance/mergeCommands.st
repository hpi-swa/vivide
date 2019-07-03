private - merge
mergeCommands

	archive selectors
		select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #command) notNil]
		thenDo: [:selector | self mergeCommand: selector].