accessing - specific
itemScript: aStep

	self
		environmentAt: self class scriptKind put: aStep;
		environmentAt: self class stepKind put: aStep.