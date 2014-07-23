as yet unclassified
test04UpdateContext

	sut objects: {ViSourceCodeSnippet new. 1. 2. 3}.
	self assert: (sut artifactContainers first context hasEqualElements: #(1 2 3)).