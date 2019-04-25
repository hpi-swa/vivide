testing
isHomogeneousRelaxed
	"Only similar chains of property extractions?"
	
	| count lastCount |
	count := 0.
	lastCount := 0.
	self
		allExtractionStepsDo: [:step | count := count + 1 ]
		ifNewSequence: [
			(lastCount = 0 or: [count = lastCount])
				ifFalse: [^ false].
			lastCount := count.
			count := 0].
	
	^ lastCount = 0 or: [count = lastCount]