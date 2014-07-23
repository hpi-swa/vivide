tests
test21OpenNextSteps

	| nextStep |	
	nextStep := ViQueryStep property: '[:number | {#text -> number. #icon -> UiFugueIcons editNumberIcon}]'.
	step next: nextStep.	

	self setUpWindow.
	self assert: 1 equals: window objects size.

	editor openNextSteps.
	self assert: 2 equals: window objects size.