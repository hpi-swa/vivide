accessing - convenience
nextIcon

	self stepsDo: [:step |
		step icon ifNotNil: [^ step icon]].
	^ nil