*vivide
detectSubInstanceSuchThat: block

	^ (self someSubInstances: 20)
		detect: [:obj | block value: obj]
		ifNone: []