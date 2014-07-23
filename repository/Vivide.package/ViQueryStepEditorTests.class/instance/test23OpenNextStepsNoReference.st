tests
test23OpenNextStepsNoReference

	| nextStep |	
	nextStep := ViQueryStep reference: ViQueryStep defaultProperties.
	step next: nextStep.	

	self setUpWindow.
	self assert: 1 equals: window objects size.

	editor openNextSteps.
	self assert: 2 equals: window objects size.