testing
isHomogeneous
	"Only one chain of properties?"
	
	| count |
	count := 0.
	self
		allPropertyStepsDo: [:p | ]
		ifNewSequence: [
			count = 1 ifTrue: [^ false].
			count := count + 1].
		
	^ true