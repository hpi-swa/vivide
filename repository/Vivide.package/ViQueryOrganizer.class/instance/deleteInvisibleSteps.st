maintenance
deleteInvisibleSteps

	| foundSomething |
	foundSomething := true.
	[foundSomething] whileTrue: [
		foundSomething := false.
		self orderedSteps
			select: [:step | (step isSpecial not 
				and: [step references size = 0])
				and: [step nextLabel isNil]]
			thenDo: [:step |
				foundSomething := true.
				step unregister.
				Transcript cr; show: '[ViQueryOrganizer] Query dropped: ', step id]].