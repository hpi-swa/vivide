accessing - convenience
referencesToStep: aQueryStep
	"Should be fast. Assume that all steps are registered."
	
	^ Array streamContents: [:strm |
		self orderedSteps do: [:step |
			((step next == aQueryStep
				or: [step isReferenceStep and: [step reference == aQueryStep]])
				or: [step isMeta and: [step metaReference == aQueryStep]])
					ifTrue: [strm nextPut: step]]]