tests
test13LinkAllStepsAvoidCycles

	| nextStep |	
	nextStep := ViQueryStep property: '[:number | {#text -> number. #icon -> UiFugueIcons editNumberIcon}]'.
	nextStep next: step.
	"Current order: nextStep -> step -> nil"

	self setUpWindow.
	window addObject: nextStep.
	"Visual order: step -> nextStep -> nil"
	
	editor linkAllSteps.
	self
		assert: step next == nextStep;
		assert: nextStep next isNil.