tests
test01ExtractSteps

	| profile extractedSteps |
	profile := converter profile.
	extractedSteps := converter extractSteps.
	
	self
		assert: extractedSteps size > 20; "Ensure enough examples."
		assert: (extractedSteps allSatisfy: [:step | (profile organization stepById: step id) notNil]).