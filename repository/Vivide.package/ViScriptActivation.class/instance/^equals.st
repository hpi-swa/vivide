comparing
= activation
	activation species == self species ifFalse: [^ false].
	^ activation thisStep = self thisStep
		and: [activation nextSteps = self nextSteps]