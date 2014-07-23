geometry
optimalHeight

	^ self inputPage isVisible
		ifTrue: [self inputPage ui codeArea optimalHeight]
		ifFalse: [super optimalHeight]