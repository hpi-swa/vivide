accessing - many
allExtractionSteps

	^ Array streamContents: [:strm |
		self allExtractionStepsDo: [:step | strm nextPut: step]]