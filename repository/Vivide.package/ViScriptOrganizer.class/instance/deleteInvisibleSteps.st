maintenance
deleteInvisibleSteps

	| foundSomething |
	foundSomething := true.
	[foundSomething] whileTrue: [
		foundSomething := false.

		self flag: #garbageCollect. "mt: Better compare compare all *reachable* steps with all steps to also find closed cycles that will always have references."

		self orderedSteps
			select: [:step | (step isSpecial not 
				and: [step references size = 0])
				and: [step nextLabel isNil]]
			thenDo: [:step |
				foundSomething := true.
				step unregister.
				Transcript cr; show: '[ViQueryOrganizer] Query dropped: ', step id]].