interpreting
upToEnd

	| previousSteps |
	previousSteps := OrderedCollection new.
	properties := Dictionary new.
	
	[step isNil or: [previousSteps includes: step]]
		whileFalse: [
			previousSteps add: step.
			self next].