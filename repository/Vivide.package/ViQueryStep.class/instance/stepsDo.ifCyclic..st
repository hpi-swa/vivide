enumerating
stepsDo: aBlock ifCyclic: anExceptionBlock

	| lastSteps |
	lastSteps := OrderedCollection new.
	self stepsDoUnsafe: [:step |
		lastSteps add: step ifPresent: [^ anExceptionBlock cull: step].
		aBlock value: step].