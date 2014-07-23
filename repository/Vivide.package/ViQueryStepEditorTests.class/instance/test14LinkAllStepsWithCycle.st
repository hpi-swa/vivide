tests
test14LinkAllStepsWithCycle

	| nextStep |	
	nextStep := ViQueryStep property: '[:number | {#text -> number. #icon -> UiFugueIcons editNumberIcon}]'.

	self setUpWindow.
	window
		addObject: nextStep;
		addObject: step.
	"Visual order: step -> nextStep -> step"
	
	self assert: 3 equals: window objects size.
	
	editor linkAllSteps.
	self
		assert: step next == nextStep;
		assert: nextStep next == step.