testing
isHomogeneousRelaxed
	"Only similar chains of property extractions?"
	
	| count one two |
	count := 0.
	two := 0.
	
	self
		allExtractionStepsDo: [:step | count := count + 1 ]
		ifNewSequence: [
			(one isNil or: [one = two]) ifFalse: [^ false].
			one := two.
			two := count.
			count := 0].

	count > 0 ifTrue: [
		one := two.
		two := count].
	
	^ one = 0 or: [one = two]