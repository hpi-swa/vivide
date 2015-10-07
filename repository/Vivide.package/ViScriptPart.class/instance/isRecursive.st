as yet unclassified
isRecursive

	self allStepsDo: [:step | ] ifRecursive: [^ true].
	^ false