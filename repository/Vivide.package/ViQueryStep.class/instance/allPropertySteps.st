accessing - convenience
allPropertySteps

	^ Array streamContents: [:strm |
		self allPropertyStepsDo: [:step | strm nextPut: step]]