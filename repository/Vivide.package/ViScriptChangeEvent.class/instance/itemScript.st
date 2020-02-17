accessing - specific
itemScript

	^ self
		environmentAt: self class scriptKind
		ifAbsent: [self environmentAt: self class stepKind]