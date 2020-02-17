accessing - convenience
nextIcon

	self allStepsDo: [:step |
		step icon ifNotNil: [^ step icon]].
	^ nil