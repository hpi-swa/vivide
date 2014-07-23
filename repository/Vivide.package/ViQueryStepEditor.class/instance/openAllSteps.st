actions
openAllSteps

	self step allStepsDo: [:s |
		self artifactRequested: s].
	
	self grabKeyboard.