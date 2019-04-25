testing
isHomogeneous
	"Only one chain of properties?"
	
	| count |
	count := 0.
	self
		allExtractionStepsDo: [:step | ]
		ifNewSequence: [
			count := count + 1.
			count > 1 ifTrue: [^ false]].
		
	^ true