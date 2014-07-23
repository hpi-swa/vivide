accessing - convenience
nextLabel

	self stepsDo: [:step |
		step label ifNotNil: [^ step label]].
	^ nil