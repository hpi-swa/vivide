tests
test11OpenAllSteps

	| nextStep |	
	nextStep := ViQueryStep reference: ViQueryStep defaultProperties.
	step next: nextStep.	

	self setUpWindow.
	self assert: 1 equals: window objects size.

	editor openAllSteps.
	self assert: 2 + ViQueryStep defaultProperties allSteps size equals: window objects size.