as yet unclassified
openAllSteps

	self object allStepsDo: [:s |
		self artifactRequested: s].
	
	self grabKeyboard.