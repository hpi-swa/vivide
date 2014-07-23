accessing - object
context: someObjects

	context := someObjects.
	otherSteps := someObjects select: [:obj | obj isKindOf: ViQueryStep].