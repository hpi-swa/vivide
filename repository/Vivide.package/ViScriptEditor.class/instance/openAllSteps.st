actions
openAllSteps

	self object allStepsDo: [:s |
		self artifactRequested: s].
	
	self grabKeyboard.