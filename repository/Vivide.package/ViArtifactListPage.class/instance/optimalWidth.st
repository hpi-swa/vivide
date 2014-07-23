geometry
optimalWidth

	^ self minimalWidth max: (self artifactContainers
		inject: 0
		into: [:max :editor | max max: editor optimalWidth])