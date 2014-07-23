accessing - convenience
allSteps

	^ Array streamContents: [:strm |
		self allStepsDo: [:step | strm nextPut: step]]