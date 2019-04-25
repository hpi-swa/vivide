recursion
isEndOfLevel

	self nextStepsDo: [:step | step = self next ifTrue: [^ false]].
	^ true