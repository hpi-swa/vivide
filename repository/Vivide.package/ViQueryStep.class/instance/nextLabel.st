accessing - convenience
nextLabel

	self allStepsDo: [:step |
		step label ifNotNil: [^ step label]].
	^ nil