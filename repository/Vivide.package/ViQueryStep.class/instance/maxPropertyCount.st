accessing - convenience
maxPropertyCount
	"Look for the largest set of consecutive property steps that are reachable from here."
	
	| maxCount currentCount |
	maxCount := 0.
	currentCount := 0.
	
	self stepsDo: [:step |
		step isPropertyStep
			ifTrue: [currentCount := currentCount + 1]
			ifFalse: [
				maxCount := maxCount max: currentCount.
				currentCount := 0].
			
		step isReferenceStep ifTrue: [
			maxCount := maxCount max: step reference maxPropertyCount]].
	
	maxCount := maxCount max: currentCount.
	^ maxCount = 0
		ifTrue: [ViQueryStep defaultProperties maxPropertyCount]
		ifFalse: [maxCount]