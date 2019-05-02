navigation
referencesToStep: targetStep
	"Should be fast. Assume that all steps are registered."
	
	^ (Array streamContents: [:strm |
		self orderedSteps do: [:step |
			((((step next == targetStep
				or: [step before includes: targetStep id])
				or: [step after includes: targetStep id])
				or: [step isReference and: [step reference == targetStep]])
				or: [step isMeta and: [step metaReference == targetStep]])
					ifTrue: [strm nextPut: step]]]) asSet asArray