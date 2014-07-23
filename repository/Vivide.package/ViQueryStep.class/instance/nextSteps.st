accessing - convenience
nextSteps

	^ Array streamContents: [:strm |
		self nextStepsDo: [:step | strm nextPut: step]]