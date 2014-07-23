accessing - objects
objects

	^ (self artifactContainerColumn artifactContainers
		collect: [:artifactContainer | artifactContainer object])
		reject: [:obj | obj isNil]