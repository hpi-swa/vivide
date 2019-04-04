tests
test23NextStepsWithReference

	| script reference |
	script := #defaultProperties asScript.
	reference := script asReference.
	
	self
		assert: ({reference}, script allSteps)
		equals: reference nextSteps.