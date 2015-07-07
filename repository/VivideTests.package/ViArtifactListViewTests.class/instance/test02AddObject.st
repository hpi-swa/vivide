as yet unclassified
test02AddObject

	sut addObject: 1.
	self
		assert: 1 equals: sut artifactContainers first object;
		assert: 1 equals: sut objects first.