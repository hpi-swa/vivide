testing
isRecursive

	self allStepsDo: [:step | ] ifRecursive: [^ true].
	^ false