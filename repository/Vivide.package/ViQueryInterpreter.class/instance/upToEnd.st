interpreting
upToEnd

	| previousSteps |
	previousSteps := OrderedCollection new.
	self clearProperties.
	
	[step isNil or: [previousSteps includes: step]]
		whileFalse: [
			previousSteps add: step.
			self next].