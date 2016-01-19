testing
isNotUsed

	^ (darkenValue >= self darkenThreshold
		and: [self visibleAreaPercent < 40])
		and: [self editor
			ifNil: [true]
			ifNotNil: [:ed | ed hasUnacceptedChanges not
				and: [ed objects noneSatisfy: [:obj | (obj isKindOf: ViSourceCodeSnippet)]]]]