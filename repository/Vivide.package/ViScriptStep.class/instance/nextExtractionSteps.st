accessing - many
nextExtractionSteps

	^ Array streamContents: [:strm |
		self nextExtractionStepsDo: [:step | strm nextPut: step]]