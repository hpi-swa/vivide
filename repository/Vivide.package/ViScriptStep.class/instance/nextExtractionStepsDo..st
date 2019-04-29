enumerating
nextExtractionStepsDo: aBlock
	"Enumerate all extraction steps up to the next property extraction."
	
	self nextStepsDo: [:step | step isPropertyExtraction ifTrue: [aBlock value: step]].