as yet unclassified
firstStep

	^ self context
		detect: [:obj | obj isKindOf: ViQueryStep]
		ifNone: [self object "workaround for initialization"]