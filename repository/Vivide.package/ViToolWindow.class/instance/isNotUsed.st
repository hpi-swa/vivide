testing
isNotUsed

	^ ((darkenValue >= self darkenThreshold
		and: [self visibleArea < 5000]))
		and: [self editor
			ifNil: [true]
			ifNotNil: [:ed | ed hasUnacceptedChanges not
				and: [ed objects noneSatisfy: [:obj | (obj isKindOf: ViSourceCodeSnippet)]]]]