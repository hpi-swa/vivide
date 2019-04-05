maintenance
registerAllReachableStepsAndDefinitions

	self orderedSteps do: [:step | step allStepsDo: [:s |
		s isRegistered ifFalse: [Transcript showln: '[ViQueryOrganizer] Query registered: ', s id].
		s register.
		s definition ifNotNil: [:def | def register]]].