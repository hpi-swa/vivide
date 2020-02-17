interpreting
upToEnd
	"Safe. Stop at first repeating step. Does not work for finite but recursive scripts."
	
	| previousSteps |
	self flag: #rename. "mt: Maybe #upToEndOrRecursion?"
	previousSteps := OrderedCollection new.
	
	[self atEnd or: [previousSteps includes: self next]] whileFalse: [
		self clearProperties.
		self upToExtractionDo: [:nextStep | previousSteps add: nextStep]].