accessing - convenience
maxPropertyCount
	"Look for the largest set of consecutive property steps that are reachable from here."
	
	| maxCount currentCount |
	maxCount := 0.
	currentCount := 0.
	
	self
		allExtractionStepsDo: [:step |
			currentCount := currentCount + 1]
		ifNewSequence: [
			maxCount := maxCount max: currentCount.
			currentCount := 0].
	
	^ maxCount := maxCount max: currentCount