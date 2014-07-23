tests
test12LinkAllSteps

	| nextStep |	
	nextStep := ViQueryStep property: '[:number | {#text -> number. #icon -> UiFugueIcons editNumberIcon}]'.

	self setUpWindow.
	window addObject: nextStep.
	self
		assert: step next isNil;
		assert: 2 equals: window objects size.
	
	editor linkAllSteps.
	self assert: step next == nextStep.