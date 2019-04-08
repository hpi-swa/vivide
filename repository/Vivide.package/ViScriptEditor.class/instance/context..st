accessing - object
context: someObjects

	self setProperty: #artifactContext toValue: someObjects.
	
	"Reset editor-specific caches."
	self
		allSteps: (someObjects select: [:obj | obj isScript]);
		input: nil.