accessing - convenience
referencesToStep: aQueryStep
	"Should be fast. Assume that all steps are registered."
	
	^ Array streamContents: [:strm |
		self orderedSteps do: [:step |
			(step next == aQueryStep or: [
				(step isReferenceStep and: [step reference == aQueryStep])])
					ifTrue: [strm nextPut: step]]]