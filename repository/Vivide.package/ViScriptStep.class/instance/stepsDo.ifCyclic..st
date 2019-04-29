enumerating - local
stepsDo: aBlock ifCyclic: anExceptionBlock

	| lastSteps |
	lastSteps := OrderedCollection new.
	self stepsDoUnsafe: [:step |
		(lastSteps includes: step)
			ifFalse: [lastSteps add: step]
			ifTrue: [^ anExceptionBlock cull: step].
		aBlock value: step].