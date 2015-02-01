geometry
optimalHeight

	^ self contentTree optimalHeight + (self editVisible
		ifTrue: [self sourceCodeEdit height]
		ifFalse: [0]  )