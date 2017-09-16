as yet unclassified
isHomogeneousRelaxed
	"Only similar chains of properties?"
	
	| count lastCount |
	count := 0.
	lastCount := 0.
	self
		allPropertyStepsDo: [:p | count := count + 1 ]
		ifNewSequence: [
			(lastCount = 0 or: [count = lastCount])
				ifFalse: [^ false].
			lastCount := count.
			count := 0].
	
	^ lastCount = 0 or: [count = lastCount]