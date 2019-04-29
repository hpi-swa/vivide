accessing - many
allSteps

	^ Array streamContents: [:strm |
		self allStepsDo: [:step | strm nextPut: step]]