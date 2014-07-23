tests
test22OpenNextStepsWithCycle

	| nextStep |	
	nextStep := ViQueryStep property: '[:number | {#text -> number. #icon -> UiFugueIcons editNumberIcon}]'.
	step next: nextStep.	
	nextStep next: step.

	self setUpWindow.
	self assert: 1 equals: window objects size.

	editor openNextSteps.
	self
		assert: 3 equals: window objects size;
		assert: window objects first == window objects last.