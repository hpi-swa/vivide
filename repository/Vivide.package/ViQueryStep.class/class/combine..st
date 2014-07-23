as yet unclassified
combine: someQueries

	| result |
	(someQueries gather: [:q |
		"Queries with cycle would have undefinied behavior in combination."
		self assert: q hasCycle not.
		
		{ViQueryStep reference: q},
		(q allSteps last isPropertyStep 
			ifTrue: [#()]
			ifFalse: [{ViQueryStep reference: ViQueryStep defaultProperties}])]
	) in: [:mergedSteps |
		result := mergedSteps first.
		mergedSteps overlappingPairsDo: [:s1 :s2 |
			s1 next: s2]].
	^ result