enumerating
allPropertyStepsDo: aBlock ifNewSequence: anotherBlock

	self
		allStepsDo: [:step | step isPropertyExtraction ifTrue: [aBlock value: step]]
		ifNewSequence: anotherBlock.